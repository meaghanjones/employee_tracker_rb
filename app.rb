require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("sinatra/activerecord")
require("./lib/division")
require("./lib/employee")
require("pg")

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

get('/employees') do
  @employees = Employee.all()
  erb(:employees)
end

get("/employees/new")do
  erb(:employee_form)
end

post('/employees') do
  name = params.fetch("name")
  employee = Employee.create({:name => name, :id => nil})
  @employees = Employee.all()
  erb(:employees)
end
