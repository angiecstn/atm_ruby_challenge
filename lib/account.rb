class Account
    # STANDARD_VALIDITY_YRS = 5
    
    # # def initialize(attrs = {})
    #     @pin_code = 1234
    #     # @account_status = :active
    #     @exp_date = 
    #     # set_owner(attrs[:owner])
    # end

    private

    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    # def missing_owner
    #     raise "An Account owner is required"
    # end

    # def set_expire_date
    # Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    # end

    # def deactivate
    #     @account_status = :deactivated
    # end
end



