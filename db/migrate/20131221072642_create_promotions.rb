class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.text :name
      t.text :description
      t.string :promo_code
      t.date :valid_from
      t.date :expires_on
      t.string :image
      t.text :terms_conditions
      t.references :business

      t.timestamps
    end
  end
end
