class Account
    STANDARD_VALIDITY_YRS = 5
    attr_accessor :exp_date
    attr_accessor :account_status
    attr_accessor :owner 
    def initialize(attrs = {})
        @pin_code = rand(1000..9999)
        @account_status = :active
        @exp_date = set_expire_date(exp_date)
        set_owner(attrs[:owner])
    end

    private

    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    def set_expire_date(exp_date)
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    def self.deactivate(account)
        account.account_status = :deactivated
    end 

    def missing_owner
        raise "An Account owner is required"
    end
      
end



