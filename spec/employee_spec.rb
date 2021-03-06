require('spec_helper')

describe(Employee) do
  describe('#division')do
    it("tells which division an employee works for") do
      test_division = Division.create({:name => "HR"})
      test_employee1 = Employee.create({:name => "test_employee1", :division_id => test_division.id})
      test_employee2 = Employee.create({:name => "test_employee2", :division_id => test_division.id})
    expect(test_employee1.division.id()).to(eq(test_division.id))
    end
  end
end
