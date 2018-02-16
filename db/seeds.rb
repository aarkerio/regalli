['inigo', 'edrizio'].each do |u|
  User.create!(email: "#{u}@regalii.com", password: 'secret123', name: "#{u} Lastname")
end
puts "-- Added 2 users to your database"
