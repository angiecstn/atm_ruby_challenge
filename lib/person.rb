require './lib/account'

class Person
     attr_accessor :name
     attr_accessor :cash

    def initialize(attrs = {})
        @name = person_name(attrs[:name])
        @account = nil
        @cash = 0 
    end
    
    private
     
    def person_name(obj)
        name == nil ? undefined_name : name 
    end

    def undefined_name
         raise ArgumentError, 'Name required'
    end
    
    # def cash_status 
    #     @cash = 0 
    #     end 
    
    
end 


