require('spec_helper')

describe('Employee') do
  describe('#name') do
    it('gives the name of the employee') do
      test_employee = Employee.new(:name => "A person", :id => 1, :division_id => 2)
      expect(test_employee.name()).to(eq("A person"))
    end
  end

  describe('#id') do
    it('gives the id number of the employee') do
      test_employee = Employee.new(:name => "A person", :id => 1, :division_id => 2)
      expect(test_employee.id()).to(eq(1))
    end
  end

  describe('#division_id') do
    it('gives the divison id number of the employee') do
      test_employee = Employee.new(:name => "A person", :id => 1, :division_id => 2)
      expect(test_employee.division_id()).to(eq(2))
    end
  end


end
