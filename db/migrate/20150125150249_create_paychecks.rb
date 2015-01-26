class CreatePaychecks < ActiveRecord::Migration
  def change
    create_table :paychecks do |t|
      t.date :period_start, :period_end
      t.float :regular_hours, :regular_rate
      t.float :overtime_hours, :overtime_rate
      t.float :special_hours, :special_rate
      t.float :bonus
      t.belongs_to :employee
    end
  end
end
