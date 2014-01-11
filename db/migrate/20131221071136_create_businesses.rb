class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :city
      t.string :country
      t.text :address
      t.boolean :featured
      t.integer :category_id
      t.text :terms_conditions
      t.references :category
      t.references :city

      t.timestamps
    end
  end
end
