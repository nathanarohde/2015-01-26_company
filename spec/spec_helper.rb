require('rspec')
require('pry')
require('sinatra/activerecord')
require('employee')
require('division')
require('pg')

RSpec.configure do |config|
  config.after(:each) do
    Employee.all().each() do |employee|
      employee.destroy()
    end
  end
end

RSpec.configure do |config|
  config.after(:each) do
    Divisions.all().each() do |division|
      division.destroy()
    end
  end
end
