require File.expand_path(File.dirname(__FILE__)) + '/../models/student'
require 'json'



file_to_read = File.expand_path(File.dirname(__FILE__)) + '/seed_data.json'
read_stream = File.read(file_to_read)

list_of_students = JSON.parse(read_stream)

list_of_students.each do |student|
  Student.create(name: student['name'])
end



