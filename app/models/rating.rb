class Rating < ApplicationRecord
  include CommonScopes
  
  belongs_to :user
  belongs_to :rater, class_name: 'User'

  scope :rating_gte, -> (rating) {  where("rating >= ?", rating) } 
  scope :by_rater, -> (rater_id) {  where(rater_id: rater_id) } 

end
