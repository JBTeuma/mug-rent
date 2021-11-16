require 'date'

if Rails.env.development?
  Booking.destroy_all
  Mug.destroy_all
  User.destroy_all
end

puts '-------Creating 2 users---------'

john = User.new(username:'John', email: 'john@beetles.com')
john.password = '12345678'
john.save!
ringo = User.new(username:'Ringo', email: 'ringo@beetles.com')
ringo.password = '12345678'
ringo.save!
puts '------ Finish to create 2 users ------'

puts '-------Creating 15 mugs----------'

# Size: 's/m/l'
mug1 = Mug.new(color: 'white ancien', size: 's', description: '', user: john)
file = File.open('db/fixtures/images/mug_ancien.jpg')
mug1.photo.attach(io: file, filename: 'mug_ancien.jpg', content_type: 'image/jpg')
mug1.save!

mug2 = Mug.new(color: 'argent', size: 'l', description: '', user: john)
file = File.open('db/fixtures/images/mug_argent.png')
mug2.photo.attach(io: file, filename: 'mug_argent.png', content_type: 'image/png')
mug2.save!

mug3 = Mug.new(color: 'Pils', size: 'm', description: '', user: john)
file = File.open('db/fixtures/images/mug_beer.jpg')
mug3.photo.attach(io: file, filename: 'mug_beer.jpg', content_type: 'image/png')
mug3.save!

mug4 = Mug.new(color: 'white', size: 'm', description: '', user: john)
file = File.open('db/fixtures/images/mug_begin.jpg')
mug4.photo.attach(io: file, filename: 'mug_begin.jpg', content_type: 'image/jpg')
mug4.save!

mug5 = Mug.new(color: 'white and blue', size: 'm', description: '', user: john)
file = File.open('db/fixtures/images/mug_blanc_bleu.jpg')
mug5.photo.attach(io: file, filename: 'mug_blanc_bleu.jpg', content_type: 'image/jpg')
mug5.save!

mug6 = Mug.new(color: 'white and red', size: 'm', description: '', user: john)
file = File.open('db/fixtures/images/mug_blanc_rouge.jpg')
mug6.photo.attach(io: file, filename: 'mug_blanc_rouge.jpg', content_type: 'image/jpg')
mug6.save!

mug7 = Mug.new(color: 'white', size: 'm', description: '', user: john)
file = File.open('db/fixtures/images/mug_blanc.jpg')
mug7.photo.attach(io: file, filename: 'mug_blanc.jpg', content_type: 'image/jpg')
mug7.save!

mug8 = Mug.new(color: 'white', size: 'l', description: '', user: john)
file = File.open('db/fixtures/images/mug_boss.jpg')
mug8.photo.attach(io: file, filename: 'mug_boss.jpg', content_type: 'image/jpg')
mug8.save!

mug9 = Mug.new(color: 'white and red', size: 's', description: '', user: john)
file = File.open('db/fixtures/images/mug_coeur.jpg')
mug9.photo.attach(io: file, filename: 'mug_coeur.jpg', content_type: 'image/jpg')
mug9.save!

mug10 = Mug.new(color: 'brown', size: 's', description: '', user: john)
file = File.open('db/fixtures/images/mug_marron.jpg')
mug10.photo.attach(io: file, filename: 'mug_marron.jpg', content_type: 'image/jpg')
mug10.save!

mug11 = Mug.new(color: 'white', size: 's', description: '', user: john)
file = File.open('db/fixtures/images/mug_motifs.jpg')
mug11.photo.attach(io: file, filename: 'mug_motifs.jpg', content_type: 'image/jpg')
mug11.save!

mug12 = Mug.new(color: 'gold', size: 'l', description: '', user: john)
file = File.open('db/fixtures/images/mug_or.png')
mug12.photo.attach(io: file, filename: 'mug_gold.png', content_type: 'image/png')
mug12.save!

mug13 = Mug.new(color: 'red and black', size: 'm', description: '', user: john)
file = File.open('db/fixtures/images/mug_pois_noirs.jpg')
mug13.photo.attach(io: file, filename: 'mug_pois_noirs.jpg', content_type: 'image/jpg')
mug13.save!

mug14 = Mug.new(color: 'black', size: 'm', description: '', user: john)
file = File.open('db/fixtures/images/mug_urgent.jpg')
mug14.photo.attach(io: file, filename: 'mug_urgent.jpg', content_type: 'image/jpg')
mug14.save!

mug15 = Mug.new(color: 'white', size: 's', description: '', user: john)
file = File.open('db/fixtures/images/mug_wake_up.jpg')
mug15.photo.attach(io: file, filename: 'mug_wake_up.jpg', content_type: 'image/jpg')
mug15.save!

puts '------ Finish to create 15 mugs ------'

puts '------ Creating 3 bookings ------'
# résa de Ringo pour le mug1 pour J à J+4
booking1 = Booking.new(cost: 40, status: false, start_date: Date.today, end_date: Date.today + 4, mug: mug1, user: ringo)
booking1.save!

# résa de Ringo pour le mug2 pour J+5 à J+8
booking2 = Booking.new(cost: 30, status: false, start_date: Date.today + 5, end_date: Date.today + 8, mug: mug2, user: ringo)
booking2.save!

# résa de Ringo pour le mug3 pour J+9 à J+10
booking3 = Booking.new(cost: 10, status: false, start_date: Date.today + 9, end_date: Date.today + 10, mug: mug3, user: ringo)
booking3.save!
puts '------Finsh bookings------'
