require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("sinatra/activerecord")
require("./lib/employee")
require("./lib/division")
require("pg")

get('/') do
  @divisions = Division.all()
  erb(:index)
end

post("/divisions") do
  name = params['name']
  divisions = Division.new({:name => name, :id => nil})
  divisions.save()
  @divisions = Division.all()
  erb(:index)
end

get('/divisions/:id') do
  @division = Division.find(params['id'].to_i())
  erb(:divisions)
end

post('/employees') do
  name = params['employee_name']
  division_id = params['division_id'].to_i()
  employee = Employee.create({:name => name, :division_id => division_id})
  @division =Division.find(division_id)
  erb(:divisions)
end

get('/employees/:id') do
  @employee = Employee.find(params['id'].to_i())
  erb(:employees)
end
