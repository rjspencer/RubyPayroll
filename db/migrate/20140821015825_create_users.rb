class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :password_digest, :role
      t.boolean :active
      t.timestamps
    end
  end
end
