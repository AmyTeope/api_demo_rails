require 'rest-client'

class UserEventsService
  def initialize(username)
    @username = username
    #TODO:: add ghLastCount, ghTotalCount
  end

  def call
    get_events
  end

  private 
    def get_events
      #TODO:: add pagination logic      
      RestClient.get "#{ENV['GITHUB_BASE_URL']}/users/#{@username}/events"
    end
end