class Employee < ActiveRecord::Base
  has_one :address
  has_many :paychecks
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  def list_name
    if last_name && first_name
      "#{last_name}, #{first_name}"
    elsif first_name
      first_name
    elsif last_name
      last_name
    end
  end
  
  def name full_name
    name_array = full_name.titleize.split
    self.last_name = name_array.pop
    self.first_name = name_array.join(" ")
  end
  
end
