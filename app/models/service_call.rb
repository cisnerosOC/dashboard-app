class ServiceCall < ActiveRecord::Base
  belongs_to :customer
  has_and_belongs_to_many :services
  has_many :service_call_details
  
  
  def true_status
    if self.status == false
      return "Open"
    else 
      return "Closed"
    end
  end


  
end
