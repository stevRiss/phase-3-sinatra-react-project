puts "🌱 Seeding spices..."

puts "Creating Mechanics..."
Jim = Mechanic.create(name: "Jim Jones", specialty:"Transmission", picture: "https://defylifecom.files.wordpress.com/2017/02/jones.jpg")
Tom = Mechanic.create(name: "Tom Braidey", specialty:"Brakes", picture: "https://images.fastcompany.net/image/upload/w_1280,f_auto,q_auto,fl_lossy/fc/3039305-poster-p-1-this-is-what-tom-brady-looks-like-as-a-nerdy-telemarketer.jpg")
Ariana = Mechanic.create(name: "Ariana Pequena ", specialty:"Maintenance", picture: "https://s.yimg.com/uu/api/res/1.2/rNYjl.VdIi4Bnd93dCnFGA--~B/aD0xMDgwO3c9MTA4MDthcHBpZD15dGFjaHlvbg--/https://media.zenfs.com/en/instyle_846/4ad13370ae66600d2a3b40ace233d3bb")
Bill = Mechanic.create(name: "Bill Fences", specialty:"Electrical", picture: "https://www.rollingstone.com/wp-content/uploads/2021/02/Gates_thumb_clean.jpg?w=1024")
Chris = Mechanic.create(name: "Chris Pebbles", specialty:"Engine", picture: "https://s.marketwatch.com/public/resources/images/MW-CY109_rock_ZG_20141103003201.jpg")
Jessie = Mechanic.create(name: "Jessie Jones", specialty:"Maintenance", picture: "https://media.npr.org/assets/img/2018/01/09/patrice-banks-girls-auto-clinic-1-of-1--3_wide-a92b9dc4341587cc96778a86533bc749a0ecc06e.jpg")

puts "Creating Customers..."
cust1 = Customer.create(name: "Craig Bell", email: "craigbell12@gmail.com", password: "craigRules123", carmodel: "2012 Toyota Prius", phone_number: 1234567890 )
cust2 = Customer.create(name: "Billy Fresh", email: "fresh22@gmail.com", password: "freshie22", carmodel: "2018 Honda Accord", phone_number:1234567891 )
cust3 = Customer.create(name: "Victoria Brinx", email: "brinxtruck23@gmail.com", password: "toriBrinx1", carmodel: "2020 Mercedes C300", phone_number: 1234567892 )
cust4 = Customer.create(name: "Lexi Pierce", email: "texlex33@gmail.com", password: "lex2", carmodel: "2015 Kia Soul", phone_number: 1234567893 )
cust5 = Customer.create(name: "Jimmy Nuerons", email: "slimjim42@gmail.com", password: "jim3", carmodel: "2020 Ford Raptor", phone_number: 1234567894 )
cust6 = Customer.create(name: "Bobby Bing", email: "bingbong2@gmail.com", password: "bing2", carmodel: "2018 Subaru Outback", phone_number: 1234567895 )
cust7 = Customer.create(name: "Robby Bong", email: "bongbing4@gmail.com", password: "bong5", carmodel: "2017 Jeep Wrangler", phone_number: 1234567896 )
cust8 = Customer.create(name: "Holly Crowley", email: "holls34@gmail.com", password: "hollyjolly54", carmodel: "2013 Nissan Maxima", phone_number: 1234567897 )
cust9 = Customer.create(name: "Kyle Lyle", email: "kyly67@gmail.com", password: "kyle6", carmodel: "2019 Dodge Challenger", phone_number: 1234567898 )

puts "Creating Appointments..."
appt1 = Appointment.create(name: "Billy Fresh", email: "fresh22@gmail.com", carmodel: "2018 Honda Accord", issue: "Transmission", startDate: DateTime.new(2021, 11, 16) , completed: false, customer_id: 2, mechanic_id: 1)
appt2 = Appointment.create(name: "Lexi Pierce", email: "texlex33@gmail.com", carmodel: "2015 Kia Soul", issue: "Tansmission", startDate: DateTime.new(2021, 11, 17), completed: false, customer_id: 4, mechanic_id: 1 )
appt3 = Appointment.create(name: "Jimmy Nuerons",email: "slimjim42@gmail.com", carmodel: "2020 Ford Raptor", issue: "Brakes",  startDate: DateTime.new(2021, 11, 17) , completed: false, customer_id: 5, mechanic_id: 2 )
appt4 = Appointment.create(name: "Lexi Pierce", email: "texlex33@gmail.com", carmodel: "2015 Kia Soul",issue: "Electrical", startDate: DateTime.new(2021, 11, 18), completed: true, customer_id: 4, mechanic_id: 4 )
appt5 = Appointment.create(name: "Robby Bong", email: "bongbing4@gmail.com", carmodel: "2017 Jeep Wrangler", issue: "Maintenance", startDate: DateTime.new(2021, 11, 15) , completed: false, customer_id: 7, mechanic_id: 3  )
appt6 =  Appointment.create(name: "Bobby Bing", email: "bingbong2@gmail.com", carmodel: "2018 Subaru Outback", issue: "Engine", startDate: DateTime.new(2021, 11, 20) , completed: true, customer_id: 6 , mechanic_id: 5 )
appt7 = Appointment.create(name: "Victoria Brinx", email: "brinxtruck23@gmail.com", carmodel: "2020 Mercedes C300", issue: "Maintenance", startDate: DateTime.new(2021, 11, 19) , completed: false, customer_id: 3 , mechanic_id: 3 )

puts "✅ Done seeding!"
