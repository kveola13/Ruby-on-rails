module Destructable
  def destroy(anyobject)
    puts "I will destroy the object"
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
  def run
    puts "I'm running"
  end
#  def get_name
#    @name
#  end
#  def set_name(name)
#    @name = name
#  end
#  def self.identify
#    puts "I am a class method"
#  end
end

#user1 = User.new("John", "Wick@John.com")
#user2 = User.new("Oliver", "Twist@Oliver.com")
#user3 = User.new("Harry", "Potter@Harry.com")


#puts "My name is #{user1.name}, and his email is #{user1.email}"

class Buyer < User
  def run
    puts "I'm buying!"
  end
end

class Seller < User
  def run
    puts "I'm selling!"
  end
end

class Admin < User
  def run
    puts "I'm an admin!"
  end
end

buyer1 = Buyer.new("John Wick", "Wick@John.com")
buyer1.run
seller1 = Seller.new("Harry Potter", "Potter@Harry.com")
seller1.run
admin1 = Admin.new("James Steel", "Steel@James.com")
admin1.run
puts Buyer.ancestors
#User.identify
user = User.new("Ola", "Olakveli@gmail.com")
user.destroy("Myname")
