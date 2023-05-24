# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Food.destroy_all
User.destroy_all
Recipe.destroy_all

User.create([
  {
    first_name: "Stephen",
    last_name: "Greens",
    email: "stephengreen@gmail.com",
    password: "password@123"
  },
  {    
    first_name: "Wes",
    last_name: "Gibbins",
    email: "wesgibbins@gmail.com",
    password: "password@123"
  },
  {    
    first_name: "Uchechi",
    last_name: "Nwaka",
    email: "uchechinwaka@gmail.com",
    password: "password@123"
  },
  {    
    first_name: "Rachel",
    last_name: "Isaac",
    email: "rachelisaac@gmail.com",
    password: "password@123"
  }
])

Food.create([
    {
      name: "Pizza",
      measurement_unit: "grams",
      price: 22.99,
      quantity: 2,
      user_id: 1
    },
    {
      name: "Burger",
      measurement_unit: "grams",
      price: 5.00,
      quantity: 4,
      user_id: 1
    },
    {
      name: "Lasagna",
      measurement_unit: "grams",
      price: 11.99,
      quantity: 3,
      user_id: 2
    },
    {
      name: "Jollof Rice",
      measurement_unit: "grams",
      price: 25.00,
      quantity: 1,
      user_id: 2
    }
  ]);

  Recipe.create([
    {
      name: "Pizza",
      preparation_time: "40 mins",
      cooking_time: "15mins",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce faucibus urna vitae eros ultricies aliquam. Nulla vestibulum vestibulum mi, in commodo urna malesuada ac. Proin nec diam faucibus, tempor lectus vel, luctus enim. Sed aliquet massa et metus varius, in euismod lorem faucibus. Integer sed aliquam sapien.",
      public: true,
      user_id: 1
    },
    {
      name: "Burger",
      preparation_time: "10 mins",
      cooking_time: "10mins",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce faucibus urna vitae eros ultricies aliquam. Nulla vestibulum vestibulum mi, in commodo urna malesuada ac. Proin nec diam faucibus, tempor lectus vel, luctus enim. Sed aliquet massa et metus varius, in euismod lorem faucibus. Integer sed aliquam sapien.",
      public: false,
      user_id: 2
    },
    {
      name: "Lasagna",
      preparation_time: "20 mins",
      cooking_time: "30mins",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce faucibus urna vitae eros ultricies aliquam. Nulla vestibulum vestibulum mi, in commodo urna malesuada ac. Proin nec diam faucibus, tempor lectus vel, luctus enim. Sed aliquet massa et metus varius, in euismod lorem faucibus. Integer sed aliquam sapien.",
      public: true,
      user_id: 3
    },
    {
      name: "Jollof Rice",
      preparation_time: "30 mins",
      cooking_time: "30mins",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce faucibus urna vitae eros ultricies aliquam. Nulla vestibulum vestibulum mi, in commodo urna malesuada ac. Proin nec diam faucibus, tempor lectus vel, luctus enim. Sed aliquet massa et metus varius, in euismod lorem faucibus. Integer sed aliquam sapien.",
      public: true,
      user_id: 4
    },
  ])

  print "Added #{Food.count} foods"
  print "Added #{User.count} users"
  print "Added #{Recipe.count} recipes"