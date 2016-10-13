Group.destroy_all
User.destroy_all
Event.destroy_all
Assignment.destroy_all


team_headband = Group.create(name: "Team Headband")
downton_abbey = Group.create(name: "Downton Abbey")
kings_landing = Group.create(name: "King's Landing")
death_star = Group.create(name: "Death Star")
tuscan_villa = Group.create(name: "Tuscan Villa")
gryffindor = Group.create(name: "Gryffindor")
ravenclaw = Group.create(name: "Ravenclaw")
hufflepuff = Group.create(name: "Hufflepuff")
slytherin = Group.create(name: "Slytherin")
castle = Group.create(name: "The Castle")
example_group = Group.create(name: "Example Team")


alex = User.create(first_name: "Alex", last_name: "Sanborn", email: "alex_s@gmail.com", password: "password", group_id: team_headband.id)
alice = User.create(first_name: "Alice", last_name: "Kallaugher", email: "alice_k@gmail.com", password: "password", group_id: team_headband.id)
gentian = User.create(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian_b@gmail.com", password: "password", group_id: team_headband.id)
ali = User.create(first_name: "Ali", last_name: "Mullin", email: "ali_m@gmail.com", password: "password", group_id: gryffindor.id)
charlie = User.create(first_name: "Charlie", last_name: "Cook", email: "charlie_c@gmail.com", password: "password", group_id: downton_abbey.id)
jake = User.create(first_name: "Jake", last_name: "Dowd", email: "jake_d@gmail.com", password: "password", group_id: death_star.id)
jason = User.create(first_name: "Jason", last_name: "Decastro", email: "jason_d@gmail.com", password: "password", group_id: tuscan_villa.id)
mahati = User.create(first_name: "Mahati", last_name: "Gollamudi", email: "mahatig@gmail.com", password: "password", group_id: ravenclaw.id)
colby = User.create(first_name: "Colby", last_name: "Schulz", email: "colbys@gmail.com", password: "password", group_id: downton_abbey.id)
francis = User.create(first_name: "Francis", last_name: "Rocco", email: "francisr@gmail.com", password: "password", group_id: gryffindor.id)
logan = User.create(first_name: "Logan", last_name: "Gants", email: "logang@gmail.com", password: "password", group_id: gryffindor.id)
andrew = User.create(first_name: "Andrew", last_name: "Klein", email: "andrewk@gmail.com", password: "password", group_id: tuscan_villa.id)
veronica = User.create(first_name: "Veronica", last_name: "Li", email: "veronical@gmail.com", password: "password")
tony = User.create(first_name: "Tony", last_name: "Mai", email: "tonym@gmail.com", password: "password")
schyler = User.create(first_name: "Schyler", last_name: "Hosler", email: "schylerh@gmail.com", password: "password")
jasper = User.create(first_name: "Jasper", last_name: "Curry", email: "jasperc@gmail.com", password: "password", group_id: ravenclaw.id)
daniella = User.create(first_name: "Daniella", last_name: "Penn", email: "daniellap@gmail.com", password: "password", group_id: ravenclaw.id)
cliff = User.create(first_name: "Cliff", last_name: "Regis", email: "cliffr@gmail.com", password: "password", group_id: ravenclaw.id)
troy = User.create(first_name: "Troy", last_name: "Chryssos", email: "troyc@gmail.com", password: "password", group_id: death_star.id)
ece = User.create(first_name: "Ece", last_name: "Ozalp", email: "eceo@gmail.com", password: "password", group_id: death_star.id)
khaleda = User.create(first_name: "Khaleda", last_name: "Khan", email: "khaledak@gmail.com", password: "password", group_id: hufflepuff.id)
dillon = User.create(first_name: "Dillon", last_name: "McRoberts", email: "dillonm@gmail.com", password: "password", group_id: hufflepuff.id)
silvana = User.create(first_name: "Silvana", last_name: "Goberdhan-Vigle", email: "silvanag@gmail.com", password: "password", group_id: hufflepuff.id)
tami = User.create(first_name: "Tami", last_name: "Jaton", email: "tamij@gmail.com", password: "password", group_id: slytherin.id)
abi = User.create(first_name: "Abi", last_name: "Diaz", email: "abid@gmail.com", password: "password", group_id: slytherin.id)
mary = User.create(first_name: "Mary", last_name: "Boyd", email: "maryb@gmail.com", password: "password", group_id: slytherin.id)
ian = User.create(first_name: "Ian", last_name: "Candy", email: "ianc@gmail.com", password: "password", group_id: castle.id)
sophie = User.create(first_name: "Sophie", last_name: "Debenedetto", email: "sophied@gmail.com", password: "password", group_id: castle.id)
jj = User.create(first_name: "JJ", last_name: "Seymour", email: "jjs@gmail.com", password: "password", group_id: castle.id)

housewarming = Event.create(name: "Housewarming party", category: "social", created_by: ali.id, start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), end_time: Faker::Time.between(DateTime.now - 1, DateTime.now), group_id: team_headband.id)


bowling = Event.create(name: "Roommate bowling outing", category: "social", created_by: charlie.id, start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), end_time: Faker::Time.between(DateTime.now - 1, DateTime.now), group_id: team_headband.id)

# social events
dinner_party = Event.create(name: "Dinner party", category: "social", created_by: jasper.id, start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), end_time: Faker::Time.between(DateTime.now - 1, DateTime.now), group_id: team_headband.id)
movie_night = Event.create(name: "Movie night", category: "social", created_by: troy.id, start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), end_time: Faker::Time.between(DateTime.now - 1, DateTime.now), group_id: team_headband.id)
brother_visit = Event.create(name: "Brother is visiting", category: "social", created_by: alex.id, start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), end_time: Faker::Time.between(DateTime.now - 1, DateTime.now), group_id: team_headband.id)
friend_visit = Event.create(name: "Friend is visiting", category: "social", created_by: khaleda.id, start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), end_time: Faker::Time.between(DateTime.now - 1, DateTime.now), group_id: team_headband.id)
sister_visit = Event.create(name: "Sister is visiting", category: "social", created_by: abi.id, start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), end_time: Faker::Time.between(DateTime.now - 1, DateTime.now), group_id: team_headband.id)
football_game = Event.create(name: "Watching the football game", category: "social", created_by: jason.id, start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), end_time: Faker::Time.between(DateTime.now - 1, DateTime.now), group_id: team_headband.id)
tv_time = Event.create(name: "Watching the season premiere of Game of Thrones", category: "social")
book_club = Event.create(name: "Book club meeting in the living room", category: "social", created_by: mary.id, start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), end_time: Faker::Time.between(DateTime.now - 1, DateTime.now), group_id: team_headband.id)

help_move = Event.create(name: "Help new roommate move in", category: "social", created_by: ian.id, start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), end_time: Faker::Time.between(DateTime.now - 1, DateTime.now), group_id: team_headband.id)

#chores
trash = Event.create(name: "Take out trash", category: "chore", created_by: alice.id, end_time: Faker::Time.between(DateTime.now - 1, DateTime.now + 12), group_id: team_headband.id)
Assignment.create(user_id: alice.id, event_id: trash.id)

mop = Event.create(name: "Mop the floors", category: "chore", created_by: alex.id, end_time: Faker::Time.between(DateTime.now - 1, DateTime.now + 12), group_id: team_headband.id)
Assignment.create(user_id: alex.id, event_id: mop.id)

clean_bathroom = Event.create(name: "Clean the bathroom", category: "chore", created_by: gentian.id, end_time: Faker::Time.between(DateTime.now - 1, DateTime.now + 12), group_id: team_headband.id)
Assignment.create(user_id: gentian.id, event_id: clean_bathroom.id)

clean_kitchen = Event.create(name: "Clean kitchen", category: "chore", created_by: alex.id, start_time: Faker::Time.between(DateTime.now - 1, DateTime.now + 12), group_id: team_headband.id)
Assignment.create(user_id: gentian.id, event_id: clean_kitchen.id)

grocery_shopping = Event.create(name: "Grocery shopping", category: "chore", created_by: alice.id, end_time: Faker::Time.between(DateTime.now - 1, DateTime.now + 12), group_id: team_headband.id)
Assignment.create(user_id: alice.id, event_id: grocery_shopping.id)

fire_alarm = Event.create(name: "check fire alarm battery", category: "chore", created_by: alex.id, end_time: Faker::Time.between(DateTime.now - 1, DateTime.now + 12), group_id: team_headband.id)
Assignment.create(user_id: alex.id, event_id: fire_alarm.id)

demo_group = Group.create(name: "Demo Team")
demo_user = User.create(first_name: "Demo", last_name: "User", email: "demo@email.com", password: "demo", group_id: demo_group.id)

# bills
# 2015
internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,1,1), group_id: team_headband.id, amount: 75.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,1,1), group_id: team_headband.id, amount: 100.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,1,1), group_id: team_headband.id, amount: 90.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,2,1), group_id: team_headband.id, amount: 60.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,2,1), group_id: team_headband.id, amount: 90.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,2,1), group_id: team_headband.id, amount: 100.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,3,1), group_id: team_headband.id, amount: 70.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,3,1), group_id: team_headband.id, amount: 95.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,3,1), group_id: team_headband.id, amount: 100.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,4,1), group_id: team_headband.id, amount: 85.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,4,1), group_id: team_headband.id, amount: 100.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,4,1), group_id: team_headband.id, amount: 120.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,5,1), group_id: team_headband.id, amount: 85.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,5,1), group_id: team_headband.id, amount: 130.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,5,1), group_id: team_headband.id, amount: 120.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,6,1), group_id: team_headband.id, amount: 85.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,6,1), group_id: team_headband.id, amount: 110.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,6,1), group_id: team_headband.id, amount: 120.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,7,1), group_id: team_headband.id, amount: 105.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,7,1), group_id: team_headband.id, amount: 110.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,7,1), group_id: team_headband.id, amount: 120.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,8,1), group_id: team_headband.id, amount: 90.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,8,1), group_id: team_headband.id, amount: 90.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,8,1), group_id: team_headband.id, amount: 120.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,9,1), group_id: team_headband.id, amount: 90.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,9,1), group_id: team_headband.id, amount: 90.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,9,1), group_id: team_headband.id, amount: 70.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,10,1), group_id: team_headband.id, amount: 80.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,10,1), group_id: team_headband.id, amount: 90.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,10,1), group_id: team_headband.id, amount: 70.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,11,1), group_id: team_headband.id, amount: 80.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,11,1), group_id: team_headband.id, amount: 50.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,11,1), group_id: team_headband.id, amount: 70.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,12,1), group_id: team_headband.id, amount: 90.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,12,1), group_id: team_headband.id, amount: 70.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,12,1), group_id: team_headband.id, amount: 70.55)

# 2016 bills

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,1,1), group_id: team_headband.id, amount: 75.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,1,1), group_id: team_headband.id, amount: 100.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,1,1), group_id: team_headband.id, amount: 90.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,2,1), group_id: team_headband.id, amount: 60.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,2,1), group_id: team_headband.id, amount: 90.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,2,1), group_id: team_headband.id, amount: 100.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,3,1), group_id: team_headband.id, amount: 70.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,3,1), group_id: team_headband.id, amount: 95.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,3,1), group_id: team_headband.id, amount: 100.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,4,1), group_id: team_headband.id, amount: 85.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,4,1), group_id: team_headband.id, amount: 100.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,4,1), group_id: team_headband.id, amount: 120.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,5,1), group_id: team_headband.id, amount: 85.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,5,1), group_id: team_headband.id, amount: 130.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,5,1), group_id: team_headband.id, amount: 120.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,6,1), group_id: team_headband.id, amount: 85.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,6,1), group_id: team_headband.id, amount: 110.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,6,1), group_id: team_headband.id, amount: 120.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,7,1), group_id: team_headband.id, amount: 105.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,7,1), group_id: team_headband.id, amount: 110.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,7,1), group_id: team_headband.id, amount: 120.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,8,1), group_id: team_headband.id, amount: 90.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,8,1), group_id: team_headband.id, amount: 90.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,8,1), group_id: team_headband.id, amount: 120.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,9,1), group_id: team_headband.id, amount: 90.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,9,1), group_id: team_headband.id, amount: 90.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,9,1), group_id: team_headband.id, amount: 70.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,10,1), group_id: team_headband.id, amount: 80.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,10,1), group_id: team_headband.id, amount: 90.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2016,10,1), group_id: team_headband.id, amount: 70.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,11,1), group_id: team_headband.id, amount: 80.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,11,1), group_id: team_headband.id, amount: 50.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,11,1), group_id: team_headband.id, amount: 70.55)

internet_bill = Event.create(name: "Internet bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,12,1), group_id: team_headband.id, amount: 90.25)
electricity_bill = Event.create(name: "Electricity bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,12,1), group_id: team_headband.id, amount: 70.35)
water_bill = Event.create(name: "Water bill", category: "bill", created_by: alice.id, end_time: DateTime.new(2015,12,1), group_id: team_headband.id, amount: 70.55)
