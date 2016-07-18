require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("sinatra/activerecord")
require("./lib/division")
require("./lib/employee")
require("pg")
require("pry")

get("/") do
  erb(:index)
end

get('/divisions') do
  @divisions = Division.all()
  erb(:divisions)
end

get("/divisions/new")do
  erb(:division_form)
end

post('/divisions') do
  name = params.fetch("name")
  division = Division.create({:name => name, :id => nil})
  @divisions = Division.all()
  erb(:divisions)
end

get('/divisions/:id') do
  @division = Division.find(params.fetch("id").to_i())
  erb(:division)
end

get('/employees') do
  @employees = Employee.all()
  erb(:employees)
end

get("/employees/new")do
  @divisions = Division.all()
  erb(:employee_form)
end

post('/employees') do
  name = params.fetch("name")
  # binding.pry
  division_id = params.fetch("division_id").to_i()
  @division = Division.find(division_id)
  @employee = Employee.create({:name => name, :division_id => division_id, :id => nil})
  @employees = Employee.all()
  erb(:employees)
end

get('/employees/:id') do
  @employee = Employee.find(params.fetch("id").to_i())
  erb(:employee_edit)
end

get('/employees/:id/edit') do
  @employee = Employee.find(params.fetch("id").to_i())
  erb(:employee_edit)
end

delete('/employees/:id/delete') do
  @employee = Employee.find(params.fetch("id").to_i())
  @employee.delete()
  @employees = Employee.all()
  erb(:employees)
end

patch("/employees/:id") do
  name = params.fetch("name")
  @employee = Employee.find(params.fetch("id").to_i())
  @employee.update({:name => name})
  erb(:employee_edit)
end

get('/divisions/:id/edit') do
  @division = Division.find(params.fetch("id").to_i())
  erb(:division_edit)
end


delete('/divisions/:id/delete') do
  @division = Division.find(params.fetch("id").to_i())
  @division.delete()
  @divisions = Division.all()
  erb(:divisions)
end

patch("/divisions/:id/edit") do
  name = params.fetch("name")
  @division = Division.find(params.fetch("id").to_i())
  @division.update({:name => name})
  erb(:division)
end
