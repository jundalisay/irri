
puts "Seeding users.."
User.create(email: "admin@a.com", password: "123123")
User.create(email: "user@a.com", password: "123123")

require 'open-uri'

puts "Seeding countries.."
File.open("country.csv", "r") do |f|
  f.each_with_index do |line, index|
    name = line.chomp.split (",")
  Country.create(name: name)
  end
end

puts "Seeding provinces.."
File.open("prov.csv", "r") do |f|
  f.each_with_index do |line, index|
    country_id, name, shortname = line.chomp.split (",")
  Province.create(country_id: country_id, name: name, shortname: shortname)
  end
end