# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :github_username
      t.timestamp :registered_at

      t.timestamps
    end
  end
end
