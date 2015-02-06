class CreatePaychecks < ActiveRecord::Migration
  def change
    create_table :paychecks do |t|
      t.integer     :check_number
      t.belongs_to  :employee, index: true
      t.belongs_to  :company, index: true
      t.belongs_to  :user, index: true
      t.date  :period_start, :period_end
      t.float :regular_hours, :regular_rate, :regular_pay
      t.float :overtime_hours, :overtime_rate, :overtime_pay
      t.float :special_hours, :special_rate, :special_pay
      t.float :salary, :commission, :bonus
      t.float :federal_tax, :state_tax, :county_tax, :city_tax
      t.float :income_total, :tax_total
      t.float :paycheck_amount
      t.boolean :deleted, index: true
      t.timestamps
    end
  end
end
