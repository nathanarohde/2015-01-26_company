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
  name =params['name']
  divisions = Division.new({:name => name, :id => nil})
  divisions.save()
  @divisions = Division.all()
  erb(:index)
end

get('/divisions/:id') do
  @division = Division.find(params['id'].to_i())
  erb(:divisions)
end
