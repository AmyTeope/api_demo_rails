Rails.application.routes.draw do
  get '/user/:id/activity_feed', to: 'users#activity_feed'
end
