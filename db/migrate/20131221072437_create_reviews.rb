class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :score
      t.text :body
      t.references :business
      t.references :user

      t.timestamps
    end
  end
end
