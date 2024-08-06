class Comment < ApplicationRecord
  include CommonScopes
  
  belongs_to :user
  belongs_to :post
end
