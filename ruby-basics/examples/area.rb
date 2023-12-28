# This code will print the area code based on the city name
# This should loop to ask for different area codes of different cities

# Sample data with areas and their codes
dic = { mumbai: 2000, delhi: 1000 }

# Method which prints all the cities in the sample data
def get_city_names(book)
  book.each {|city,area| puts city}
end

# Method which prints the area code on taking the imput of the city name
def get_area_code(book,city)
  area_code = book[city]
  puts "The area code for #{city} is #{area_code}"
end

loop do

  puts "Do you want to lookup the area code based on the city name?(Y/N)"
  prompt = gets.chomp.downcase

  if prompt == "y"
    puts "Find the list of cities below:"
    get_city_names(dic)

    puts "Enter the city name to get the area code:"
    city_name = gets.chomp.to_sym
    get_area_code(dic,city_name)
  else
    break
  end
end