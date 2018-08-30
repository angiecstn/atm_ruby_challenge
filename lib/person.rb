require './lib/account'

class Person
     attr_accessor :name
     attr_accessor :cash

    def initialize(attrs = {})
        @name = person_name(attrs[:name])
        @account = nil
        @cash = 0
    end
end    
    
private
     
    def person_name(obj)
        obj == nil ? undefined_name : @name = obj 
    end

    def undefined_name
         raise "Name required"
    end


    



