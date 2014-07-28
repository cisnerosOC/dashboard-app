class ServiceCall < ActiveRecord::Base
  has_many :service
  has_many :service_call_details
  attr_accessor :service1
  attr_accessor :service2
  attr_accessor :service3
  attr_accessor :service4
  attr_accessor :service5
  attr_accessor :service6
  attr_accessor :service7



  
end
