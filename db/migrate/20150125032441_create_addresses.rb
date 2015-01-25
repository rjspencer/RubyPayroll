class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_1, :street_2, :city, :state, :zip, :type
      t.belongs_to :employee, :company
      t.timestamps
    end
  end
end