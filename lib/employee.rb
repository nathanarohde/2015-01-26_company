class Employee < ActiveRecord::Base
  belongs_to(:division)
end

# class Employee
#   attr_reader(:name, :id, :division_id)
#
#   define_method(:initialize) do |attributes|
#     @name = attributes[:name]
#     @id = attributes[:id]
#     @division_id = attributes[:division_id]
#   end
#
# end
