# frozen_string_literal: true

class AddInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :photo, :string
    add_column :users, :cover_image, :string
  end
end
