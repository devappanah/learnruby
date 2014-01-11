class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :origin_price
      t.integer :discount_price
      t.string :duration
      t.references :business
      t.references :category

      t.timestamps
    end
  end
end
