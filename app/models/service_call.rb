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
  def date
    @date = self.service_date
    return @date.strftime("%a, %b %e %Y")
  end
  def short_date
    date = self.service_date
    return date.strftime("%m/%d/%Y")
  end


  
end
