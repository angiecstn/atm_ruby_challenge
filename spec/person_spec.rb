require './lib/person'
require './lib/atm'

describe Person do
    subject { described_class.new(name: 'Thomas')}

    it 'is expected to have a :name on initialize' do
    expect(:name).not_to be(nil)
    end

    it 'is expected to raise error if no name is set' do
        expect { subject.account_name }.to raise_error(ArgumentError, 'Name required')
    end

    it 'is expected to have a :cash attribute with value of 0 on initialize' do
        expect (:cash).to_eq(0)
    end
end