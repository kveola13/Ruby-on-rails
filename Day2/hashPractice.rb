numbers = {a:1,b:2,c:3,d:4,e:5,f:10}

numbers.each {|k, v| puts "The key is #{k} and the value is #{v}"}

numbers.each { |k, v| numbers.delete(k)if v>3}

puts numbers

numbers [:d] = 5
numbers [:e] = 9

puts numbers
numbers.select {|k,v| puts "#{v}" if v.odd?}
