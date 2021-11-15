require 'date'

p '-------Creating 2 users---------'
john = User.new(username:'John', email: 'john@beetles.com')
john.password = '12345678'
john.save!
ringo = User.new(username:'Ringo', email: 'ringo@beetles.com')
ringo.password = '12345678'
ringo.save!
p '-------Creating 2 mugs----------'
licorn = Mug.create!(color:'pink', user: john)
paddington = Mug.create!(color:'red', user: john)
p '-------Creating 1 booking-------'
booking = Booking.create!(start_date: Date.today, end_date: Date.today + 5, user: ringo, mug: licorn)
