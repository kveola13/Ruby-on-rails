class User

    attr_accessor :name
    def initialize(name)
        @name=name
    end

    def high
        "high on meth"
    end
end

class Buyer < User
    attr_writer :bought

    def bought
        @bought || false
    end

    def high
        "high on coke"
    end
end

class Seller < User

    def high
        "high on life"
    end
end


user = User.new("Stian")
user.name = "Stian Nygaard"
puts "#{user.name} is a user and is #{user.high}"
buyer = Buyer.new("Ola")
# buyer.bought = true
puts "#{buyer.name} is a buyer and bought something: #{buyer.bought}, and is also #{user.high}"
seller = Seller.new("Michiru")
puts "#{seller.name} is an seller and is #{seller.high}"
