class CreatePaycheckTotals < ActiveRecord::Migration
  def change
    create_table :paycheck_totals do |t|
      t.string :type
      t.float :total
      t.belongs_to :paycheck
    end
  end
end
