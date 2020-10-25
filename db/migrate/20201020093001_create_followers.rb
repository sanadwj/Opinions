# frozen_string_literal: true

class CreateFollowers < ActiveRecord::Migration[6.0]
  def change
    create_table :followers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :follower, index: true
      t.boolean :confirmed

      t.timestamps null: false
    end
    add_foreign_key :followers, :users, column: :follower_id
  end
end
