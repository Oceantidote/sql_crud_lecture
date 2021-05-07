require_relative 'doctors_controller'
require 'pry-byebug'
require 'sqlite3'

DB = SQLite3::Database.new("doctors.db")

controller = DoctorsController.new(DB)
1.times do
  binding.pry
end
