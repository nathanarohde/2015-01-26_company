require('spec_helper')

 describe('Employee') do
   it("tells which division the employees beloing to") do
     division = Division.create({:name => "division"})
     employee = Employee.create({:name => "employee", :division_id=>division.id})
     expect(employee.division()).to(eq(division))
   end

 end
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
