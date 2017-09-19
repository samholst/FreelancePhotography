User.create!(
            email: "user@test.com",
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
            email: "user2@test.com",
            first_name: "Sam",
            last_name: "Holst",
            address: "1042 W Center St",
            city: "Orem",
            state: "UT",
            postal_code: 84057,
            password: "asdfasdf"
          )
puts "Second user created"

User.create!(
            email: "user3@test.com",
            first_name: "Sam",
            last_name: "Holst",
            address: "315 N 900 W",
            city: "Orem",
            state: "UT",
            postal_code: 84057,
            password: "asdfasdf"
          )
puts "Third user created"
