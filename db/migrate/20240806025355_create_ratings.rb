class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :rater, null: false, foreign_key: { to_table: :users }
      t.integer :rating
      t.timestamp :rated_at

      t.timestamps
    end
  end
end
