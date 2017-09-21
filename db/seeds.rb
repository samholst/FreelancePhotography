orem_addresses = ["1140 West 800 North", "15 State St", "1265 S Sandhill Rd", "1611 State St", "1170 West 800 North", "1170 800 N", "106 State St", "315 N 900 W"]
8.times do |n|
  User.create!(
              email: "user_#{n}_orem@test.com",
              first_name: "John",
              last_name: "Deer",
              address: "#{orem_addresses[n]}",
              city: "Orem",
              state: "UT",
              postal_code: 84057,
              password: "asdfasdf"
            )
end
puts "8 Orem users created"

provo_addresses = ["760 E 700 N", "627 N 100 W"]
2.times do |n|
  User.create!(
              email: "user_#{n}_provo@test.com",
              first_name: "Blake",
              last_name: "Berns",
              address: "#{provo_addresses[n]}",
              city: "Provo",
              state: "UT",
              postal_code: 84604,
              password: "asdfasdf"
            )
end
puts "2 Provo users created"

User.create!(
            email: "sawohol@gmail.com",
            first_name: "Sam",
            last_name: "Holst",
            address: "951 W 20 N",
            city: "Orem",
            state: "UT",
            postal_code: 84057,
            password: "asdfasdf"
          )
puts "One user created"

User.create!(
            email: "mathews.colton@gmail.com",
            first_name: "Colton",
            last_name: "Mathews",
            address: "1042 W Center St",
            city: "Orem",
            state: "UT",
            postal_code: 84057,
            password: "asdfasdf"
          )
puts "Second user created"
