puts "Seeding users.."
User.create(email: "admin@a.com", password: "123123")
User.create(email: "user@a.com", password: "123123")

require 'open-uri'

puts "Seeding countries.."
File.open("country.csv", "r") do |f|
  f.each do |l|
    name = l.chomp
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

puts "Seeding categories.."
File.open("cat.csv", "r") do |f|
  f.each_with_index do |line, index|
    name = line.chomp.split (",")
  Category.create(name: name)
  end
end


puts "Seeding crops.."
File.open("crops.csv", "r") do |f|
  f.each_with_index do |line, index|
    country, province, cat, shortname, name, photo, water, nutrients, temperature, soil,  elevation, humidity,  ph = line.chomp.split (",")
  Crop.create(country_id: country, province_id: province, category_id: cat, shortname: shortname, name: name, photo: photo, water: water, nutrients: nutrients, temperature: temperature, soil: soil, elevation: elevation, humidity: humidity, ph: ph)
  end
end


puts "Seeding c1.."
File.open("c1.csv", "r") do |f|
  f.each_with_index do |line, index|
    crop, year, month, temp, flower, maturity, photo, height, yieldperha, price = line.chomp.split (",")
  Coffee1.create(user_id: 1, crop_id: crop, year: year, month: month, temperature: temp, flower: flower, maturity: maturity, photo: photo, 
    height: height, yield: yieldperha, price: price)
  end
end

puts "Seeding r1.."
File.open("r1.csv", "r") do |f|
  f.each_with_index do |line, index|
    crop, year, month, temp, flower, maturity, photo, height, yieldperha, price = line.chomp.split (",")
  Rice1.create(user_id: 1, crop_id: crop, year: year, month: month, temperature: temp, flower: flower, maturity: maturity, photo: photo, 
    height: height, yield: yieldperha, price: price)
  end
end

puts "Seeding r2.."
File.open("r2.csv", "r") do |f|
  f.each_with_index do |line, index|
    crop, year, month, temp, flower, maturity, photo, height, yieldperha, price = line.chomp.split (",")
  Rice2.create(user_id: 1, crop_id: crop, year: year, month: month, temperature: temp, flower: flower, maturity: maturity, photo: photo, 
    height: height, yield: yieldperha, price: price)
  end
end

puts "Seeding r3.."
File.open("r3.csv", "r") do |f|
  f.each_with_index do |line, index|
    crop, month, temp, flower, maturity, photo, height, yieldperha, price = line.chomp.split (",")
  Rice3.create(user_id: 1, crop_id: crop, year: year, month: month, temperature: temp, flower: flower, maturity: maturity, photo: photo, 
    height: height, yield: yieldperha, price: price)
  end
end

# puts "Seeding r3.."
# File.open("r.csv", "r") do |f|
#   f.each_with_index do |line, index|
#     crop, month, flower, maturity, photo, height, yieldperha, price = line.chomp.split (",")
#   Rice3.create(user_id: 1, crop: crop, month: month, flower: flower, maturity: maturity, photo: photo, 
#     height: height, yield: yieldperha, price: price)
#   end
# end

# puts "Seeding plants.."
# File.open("plants.csv", "r") do |f|
#   f.each_with_index do |line, index|
#     country, province, cat, shortname, name, flower, maturity, photo, height, yieldperha, price = line.chomp.split (",")
#   Plant.create(user_id: 1, country_id: country, province_id: province, category_id: cat, shortname: shortname, name: name, 
#     flower: flower, maturity: maturity, photo: photo, height: height, yield: yieldperha, price: price)
#   end
# end


# puts "Seeding ratios.."
# File.open("ratios.csv", "r") do |f|
#   f.each_with_index do |line, index|
#     country, province, cat, year, month, shortname, name, flower, maturity, photo, height, yieldperha, price = line.chomp.split (",")
#   Ratio.create(user_id: 1, country_id: country, province_id: province, category_id: cat, month: month, shortname: shortname, name: name, 
#     flower: flower, maturity: maturity, photo: photo, height: height, yield: yieldperha, price: price)
#   end
# end
