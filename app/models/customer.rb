class Customer < ActiveRecord::Base
  has_many :service_calls

  def name 
    return "#{self.first_name} #{self.last_name}"
  end



end

