class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string 		:street_1, :street_2, :city, :state, :zip, :phone, :type
      t.belongs_to 	:employee, index: true
      t.belongs_to 	:company, index: true
      t.boolean 	:active, index: true
      t.timestamps
    end
  end
end