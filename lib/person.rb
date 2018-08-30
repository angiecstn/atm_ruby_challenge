require './lib/account'
require 'date'

class Person
     attr_accessor :name
     attr_accessor :cash
     attr_accessor :account
     attr_accessor :date

    def initialize(attrs = {})
        @name = person_name(attrs[:name])
        @account = nil
        @cash = 0
        @date = Date.today
    end

    def create_account
        @account = Account.new(owner: self)
    end
end


    
private
     
    def person_name(obj)
        obj == nil ? undefined_name : @name = obj 
    end

    def undefined_name
         raise "Name required"
    end

    def missing_account
        raise 'No account found'
    end





    



