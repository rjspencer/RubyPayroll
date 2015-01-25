class Company < ActiveRecord::Base
  has_one :address
  has_many :employees
  has_many :paychecks, through: :employees
end
