require 'date'

if Rails.env.development?
  Booking.destroy_all
  Mug.destroy_all
  User.destroy_all
end

puts '-------Creating 2 users---------'

john = User.new(username:'John', email: 'john@beetles.com', address: 'Whitechapel, London, UK')
john.password = '12345678'
john.save!
ringo = User.new(username:'Ringo', email: 'ringo@beetles.com', address: 'Queen Square Gardens, London, UK')
ringo.password = '12345678'
ringo.save!
puts '------ Finish to create 2 users ------'

puts '-------Creating 15 mugs----------'

# Size: 's/m/l'
mug1 = Mug.new(color: 'white ancien', size: 's', description: "Fais à la main par ma grand-mère, ce mug contient tous les mystères de l'Histoire !", user: john, price_by_day: 10)
file = File.open('db/fixtures/images/mug_ancien.jpg')
mug1.photo.attach(io: file, filename: 'mug_ancien.jpg', content_type: 'image/jpg')
mug1.save!

mug2 = Mug.new(color: 'argent', size: 'l', description: "Vous avez toujours voulu boire un café dans la coupe d'un Seigneur bavarois ? Essayez-le !", user: john, price_by_day: 10)
file = File.open('db/fixtures/images/mug_argent.png')
mug2.photo.attach(io: file, filename: 'mug_argent.png', content_type: 'image/png')
mug2.save!

mug3 = Mug.new(color: 'Pils', size: 'm', description: "Retrouvez la joie du café conjuguée à la bière !", user: john, price_by_day: 5)
file = File.open('db/fixtures/images/mug_beer.jpg')
mug3.photo.attach(io: file, filename: 'mug_beer.jpg', content_type: 'image/png')
mug3.save!

mug4 = Mug.new(color: 'white', size: 'm', description: "Si vous êtes un aventurier et que vous avez l'âme prétentieuse, profitez de ce mug !", user: john, price_by_day: 5)
file = File.open('db/fixtures/images/mug_begin.jpg')
mug4.photo.attach(io: file, filename: 'mug_begin.jpg', content_type: 'image/jpg')
mug4.save!

mug5 = Mug.new(color: 'white and blue', size: 'm', description: "On ne va pas se mentir, c'est un mug Ikea. Mais bon, tous les goûts sont dans la nature, non ?", user: john, price_by_day: 5)
file = File.open('db/fixtures/images/mug_blanc_bleu.jpg')
mug5.photo.attach(io: file, filename: 'mug_blanc_bleu.jpg', content_type: 'image/jpg')
mug5.save!

mug6 = Mug.new(color: 'white and red', size: 'm', description: "Le rouge, c'est la meilleure couleur. Aguichant, énervant et tendantieux, vous vous reconnaissez ? Prenez-le !", user: john, price_by_day: 5)
file = File.open('db/fixtures/images/mug_blanc_rouge.jpg')
mug6.photo.attach(io: file, filename: 'mug_blanc_rouge.jpg', content_type: 'image/jpg')
mug6.save!

mug7 = Mug.new(color: 'white', size: 'm', description: "Un mug blanc bien réconfortant, pour les plus uniformistes d'entre nous !", user: john, price_by_day: 5)
file = File.open('db/fixtures/images/mug_blanc.jpg')
mug7.photo.attach(io: file, filename: 'mug_blanc.jpg', content_type: 'image/jpg')
mug7.save!

mug8 = Mug.new(color: 'white', size: 'l', description: "Si comme Macron vous pensez que votre projet mérite un Mug, adoptez-le et vous vous sentirez enfin comme l'élu", user: john, price_by_day: 5)
file = File.open('db/fixtures/images/mug_boss.jpg')
mug8.photo.attach(io: file, filename: 'mug_boss.jpg', content_type: 'image/jpg')
mug8.save!

mug9 = Mug.new(color: 'white and red', size: 's', description: "Coloré aux couleurs d'automnes, ce Mug est l'occasion idéale pour se replonger dans les idylles passées", user: john, price_by_day: 6)
file = File.open('db/fixtures/images/mug_coeur.jpg')
mug9.photo.attach(io: file, filename: 'mug_coeur.jpg', content_type: 'image/jpg')
mug9.save!

mug10 = Mug.new(color: 'brown', size: 's', description: "Une mystérieuse femme vous a laissé ce Mug. Aurez-vous la curiosité de le prendre ?", user: john, price_by_day: 6)
file = File.open('db/fixtures/images/mug_marron.jpg')
mug10.photo.attach(io: file, filename: 'mug_marron.jpg', content_type: 'image/jpg')
mug10.save!

mug11 = Mug.new(color: 'white', size: 's', description: "Pour celles et ceux qui aiment boire un café en lisant 'Orgueil et Préjugés'", user: john, price_by_day: 4)
file = File.open('db/fixtures/images/mug_motifs.jpg')
mug11.photo.attach(io: file, filename: 'mug_motifs.jpg', content_type: 'image/jpg')
mug11.save!

mug12 = Mug.new(color: 'gold', size: 'l', description: "Egyptien, Babyloniens et sumériens ont tous trempé leurs lèvres dedans. Rejoignez l'histoire en louant ce Mug", user: john, price_by_day: 12)
file = File.open('db/fixtures/images/mug_or.png')
mug12.photo.attach(io: file, filename: 'mug_gold.png', content_type: 'image/png')
mug12.save!

mug13 = Mug.new(color: 'red and black', size: 'm', description: "Ce Mug est fait pour celles et ceux qui qui ont toujours cette tendance à se prendre pour une coccinelle !", user: john, price_by_day: 7)
file = File.open('db/fixtures/images/mug_pois_noirs.jpg')
mug13.photo.attach(io: file, filename: 'mug_pois_noirs.jpg', content_type: 'image/jpg')
mug13.save!

mug14 = Mug.new(color: 'black', size: 'm', description: "Les bourreaux de travail ont droit, eux aussi, d'avoir un mug ! Now !", user: john, price_by_day: 4)
file = File.open('db/fixtures/images/mug_urgent.jpg')
mug14.photo.attach(io: file, filename: 'mug_urgent.jpg', content_type: 'image/jpg')
mug14.save!

mug15 = Mug.new(color: 'white', size: 's', description: "Quand le réveil est toujours source de contrainte, sachez reprendre le dessus. Avec ce Mug, un tranche de gateau à la pomme et un bon livre, vous en aurez les moyens", user: john, price_by_day: 5)
file = File.open('db/fixtures/images/mug_wake_up.jpg')
mug15.photo.attach(io: file, filename: 'mug_wake_up.jpg', content_type: 'image/jpg')
mug15.save!

puts '------ Finish to create 15 mugs ------'

puts '------ Creating 3 bookings ------'
# résa de Ringo pour le mug1 pour J à J+4
booking1 = Booking.new(cost: 40, status: "pending", start_date: Date.today, end_date: Date.today + 4, mug: mug1, user: ringo)
booking1.save!

# résa de Ringo pour le mug2 pour J+5 à J+8
booking2 = Booking.new(cost: 30, status: "pending", start_date: Date.today + 5, end_date: Date.today + 8, mug: mug2, user: ringo)
booking2.save!

# résa de Ringo pour le mug3 pour J+9 à J+10
booking3 = Booking.new(cost: 5, status: "pending", start_date: Date.today + 9, end_date: Date.today + 10, mug: mug3, user: ringo)
booking3.save!
puts '------Finsh bookings------'
