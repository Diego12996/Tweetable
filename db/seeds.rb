puts "Destroying data"

User.destroy_all
Tweet.destroy_all
Comment.destroy_all

puts "Generate new data"

5.times do |i|
    User.create(username: "user#{i+1}", name: "Test", email: "user#{i+1}@mail.com", password: "qwerty")

    puts "User created succesfully"
end

5.times do |i|
    Tweet.create(body: "Tweet de prueba con menos de 140 caracteres", user: User.all.sample)

    puts "Tweet created succesfully"
end

5.times do
    Comment.create(body: "Respuesta a un Tweet", user: User.all.sample, tweet: Tweet.all.sample)

    puts "Comment created succesfully"
end