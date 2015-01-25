class CreatePaychecks < ActiveRecord::Migration
  def change
    create_table :paychecks do |t|
      t.date :period_start, :period_end
      t.belongs_to :employee
    end
  end
end
