Hotel.create!(name: "Bach Khoa Hotel", address: "Khách sạn A25 Bạch Mai",
phone_number: Faker::PhoneNumber.cell_phone, pool: true, parking: true)
Hotel.create!(name: "Xã Đàn Hotel", address: "Saigon Sun Hotel Xã Đàn",
phone_number: Faker::PhoneNumber.cell_phone, pool: true, parking: true)

20.times do |i|
  Hotel.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address,
phone_number: Faker::PhoneNumber.cell_phone,
  wifi: [true, false].sample, pool: [true, false].sample, parking: [true, false].sample, breakfast:[true, false].sample)
  HotelPicture.create!(hotel_id: i+1, picture: '000')
end
HotelPicture.create!(hotel_id: 21, picture: '000')
HotelPicture.create!(hotel_id: 22, picture: '000')
99.times do |n|
  name  = Faker::Name.name
  email = "user#{n + 1}@hotel.com"
  password = "123456"
  User.create!(name:  name,
               email: email,
               password: password,
               password_confirmation: password,
               picture: "avatar/#{rand(7)}.jpg"
              )
end
users = User.order(:created_at).take(6)

Admin.create!(email: "admin@gmail.com",
              password: "adminadmin")

HotelPicture.all.each do |ii|
  ii.update_column(:picture, "000")
end
