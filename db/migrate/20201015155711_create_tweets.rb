class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :opinions do |t|
      t.references :user

      t.timestamps
    end
  end
end
