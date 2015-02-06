class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string 	:email, index: true
      t.string 	:password_digest
      t.string 	:role
      t.boolean :active, index: true
      t.timestamps
    end
  end
end
