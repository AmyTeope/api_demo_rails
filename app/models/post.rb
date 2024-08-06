class Post < ApplicationRecord
  include CommonScopes
  
  belongs_to :user
end
