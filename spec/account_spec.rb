require './lib/account.rb'
require 'Date'

describe Account do
    let(:person) {instance_double('Person', name: 'Thomas')}
    subject { described_class.new({owner: person})}

    it 'check length of a pin_code' do
        pin_code = rand(1000..9999) 
        pin_code_length = Math.log10(pin_code).to_i + 1
        expect(pin_code_length).to eq 4
    end 

    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.exp_date).to eq expected_date
    end

    it 'is expected to have :active status on initialize' do
    expect(subject.account_status).to eq :active
    end

    it 'is expected to have an owner' do
    expect(subject.owner).to eq person
    end

    it 'is expected to raise error if no owner is set' do
    expect { described_class.new}.to raise_error 'An Account owner is required'
    end

    it 'deactivates account using Class method' do
        Account.deactivate(subject)
        expect(subject.account_status).to eq :deactivated
      end
end 



