cities = {
    'Toukyou'=>10,
    'Akihabara'=>20,
    'Okayama'=>30,
    'Hokkaidou'=>40,
    'Shinsetsu'=>50,
    'Konbu' =>60,
    'Kensetsu'=>70,
    'Shirohige'=>80,
    'Oslo'=>90,
    'New York'=>100
}
def loopCity(cities)
  loop do
    puts "Please select a city! To exit, type \'exit\'\n"
    userCity = gets.chomp
    cities.select {|k,v| puts "Area code : #{v}, city: #{k}\n" if userCity.downcase == k.downcase}
    break if userCity.downcase == 'Exit'.downcase
  end
end

def loopCode(cities)
loop do
    puts "Please select area code! To exit, type \'exit\'\n"
    userCode = gets.chomp
    cities.select {|k,v| puts "Area code: #{v}, city #{k}\n" if userCode.to_i == v}
    break if userCode.downcase == "Exit".downcase
  end
end

cities.each {|k,v| puts "City Name: #{k}, area code: #{v}\n"}
loop do
  puts "\nDo you wish to look up by city name or area code?\nPlease enter \"Name\" or \"Code\" to exit, type anything else!"
  answer = gets.chomp
  if answer.downcase == "Name".downcase
    loopCity(cities)
  end
  if answer.downcase == "Code".downcase
    loopCode(cities)
  end
  if answer.downcase != "Name" || "Code"
    puts "Goodbye!\n"
    break
  end
end
