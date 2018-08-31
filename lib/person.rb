require './lib/account'
require './lib/atm.rb'
require 'date'

class Person
     attr_accessor :name, :cash, :account, :date
    
    def initialize(attrs = {})
        @name = person_name(attrs[:name])
        @account = nil
        @cash = 0
        @date = Date.today
    end

    def create_account
        @account = Account.new(owner: self)
    end

    def deposit(amount)
        @account == nil ? missing_account : deposit_funds(amount)
    end

    def withdraw(args = {})
        @account == nil ? missing_account : withdraw_funds(args)
    end

    private
    
    def deposit_funds(amount)
        @cash -= amount
        @account.balance += amount
    end

    def withdraw_funds(args)
        args[:atm] == nil ? missing_atm : atm = args[:atm]
        account = @account
        amount = args[:amount]
        pin = args[:pin]
        response = atm.withdraw(amount, pin, account)
        response[:status] == true ? increase_cash(response) : response
    end

    def increase_cash(response)
        @cash += response[:amount]
    end

    def person_name(obj)
        obj == nil ? undefined_name : @name = obj 
    end

    def undefined_name
         raise "Name required"
    end

    def missing_account
        raise 'No account found'
   end

    def missing_atm
        raise 'An ATM is required'
    end
end








    



