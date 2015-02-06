class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string 		:first_name, :last_name
      t.integer		:excemptions, :filing_status
      t.belongs_to 	:company, index: true
      t.boolean 	:active, index: true
      t.timestamps
    end
  end
end
