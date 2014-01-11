class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :year
      t.references :business

      t.timestamps
    end
  end
end
