# Expermiment to test authentication

# Sample data with usernames and passwords
auth = [{ "username" => "mohan","password"=>"Krish123!"},{ "username"=>"root","password" => "Krish123!" }]

def authentication (username, password, auth)
  for i in auth
    if i["username"] == username && i["password"] == password
      return puts i
    end
  end
return puts "Credentials are wrong"
end

i = 1
while i < 3

# Input to take the username
puts "Enter the username:"
username = gets.chomp

# Input to take the password
puts "Enter the password:"
password = gets.chomp

authentication(username, password, auth)


puts "Do you want to retry?(Y/N)"
value = gets.chomp.downcase
if value != "y"
  break
end

i = i + 1

end

puts "You have exceeded 2 attempts" if i == 3