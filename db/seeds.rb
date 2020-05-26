puts "Resetting it all"
Chatroom.destroy_all
User.destroy_all
Message.destroy_all

puts "     _.-^^---....,,--_          _ _"
puts " _--    <(        ((> )--_       |"
puts "<     (      ( >         >)      |"
puts "(       )  BOOM!    ))   |)      |"
puts " \\._ (< \\     |   /    _./       |"
puts "    ```--. . , ; .--'''        100Km"
puts "          | |   |                |"
puts "       .-=||  | |=-.             |"
puts "       `-=#$%&%$#=-'             |"
puts "          | ;  :|                |"
puts " _____.,-#%&$@%#&#~,._____      - -"

puts "Create Chatrooms"
Chatroom.create name: "general"

puts "Create Users"
User.create email: "jack@sparrow.com", password: '123456'
User.create email: "elizabeth@swann.com", password: '123456'

