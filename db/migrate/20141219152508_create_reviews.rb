class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :review, null: false
      t.integer :rating, null: false
      t.integer :restaurant_id
      t.timestamps
    end
  end
end
