class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.text :education
      t.text :experience
      t.string :avatar
      t.string :languages
      t.references :business

      t.timestamps
    end
  end
end
