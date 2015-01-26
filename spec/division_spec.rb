require('spec_helper')

describe('Division') do
  describe('#name') do
    it('gives the name of the Divison within the Company') do
      test_division=Division.new( :name => "Marketing",:id => 1)
      expect(test_division.name()).to(eq("Marketing"))
    end
  end

  describe('#id') do
    it('gives the iD for the division within the company') do
      test_division=Division.new(:name =>"Marketing", :id=> 1)
      expect(test_division.id()).to(eq(1))
    end
  end



end
