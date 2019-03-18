require 'pp'
require_relative "user"

user = User.new "Olakveli@gmail.com", "Ola"

pp user

user.save
