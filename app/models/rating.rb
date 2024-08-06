# frozen_string_literal: true

class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :rater, class_name: 'User'
end
