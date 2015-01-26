class Employee < ActiveRecord::Base
  has_one :address
  has_many :paychecks
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  def full_name
    "#{self.first_name} #{last_name}"
  end
  
  def name name
#     TODO: this makes no allowance for middle names, suffixes, etc
    self.first_name = name.split.first.capitalize
    self.last_name = name.split.last.capitalize
  end
  
end
