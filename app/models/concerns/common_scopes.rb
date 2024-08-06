module CommonScopes
  extend ActiveSupport::Concern

  included do
    scope :order_created_desc, -> { order("created_at desc") }    
    scope :by_user, -> (user_id) {  where(user_id: user_id) }            
  end

end