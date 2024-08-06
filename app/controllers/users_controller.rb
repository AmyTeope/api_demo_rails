class UsersController < ApplicationController
  
  def activity_feed
    user_id = params[:id]
    limit = activity_feed_params[:limit]
    username = User.select(:github_username).find(user_id).github_username
    
    posts = Post.by_user(user_id)
    comments = Comment.by_user(user_id)
    ratings = Rating.by_user(user_id).rating_gte(4)
    
    ghEvents = username.present? ? JSON.parse(UserEventsService.new(username).call) : []
    
    results = (posts + comments + ratings + ghEvents).sort_by{|r| r['created_at']}.reverse

    render json: results.to_json
  end

  private    
    def activity_feed_params
      params.permit(:limit, :post_cursor, :comment_cursor, :rating_cursor)
    end  
end