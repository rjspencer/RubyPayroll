class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name, :last_name
      t.belongs_to :company
      t.timestamps
    end
  end
end
