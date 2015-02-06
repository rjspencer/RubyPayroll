class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.belongs_to :user, index: true
      t.boolean :active
    end
  end
end
