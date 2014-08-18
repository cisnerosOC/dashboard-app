class ServiceCallDetail < ActiveRecord::Base
  belongs_to :service_call  
  attr_accessor :service1
  attr_accessor :service2
  attr_accessor :service3
  attr_accessor :service4
  attr_accessor :service5
  attr_accessor :service6
  attr_accessor :service7
end
