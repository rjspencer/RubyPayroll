class Paycheck < ActiveRecord::Base
  belongs_to :employee
  has_many :paycheck_totals
  
end
