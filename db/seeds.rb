User.destroy_all
Event.destroy_all
Group.destroy_all
Assignment.destroy_all

Group.create(name: "A Good Abode")
Event.create(group_id: aga.id, name: "Dodgeball Mayhem 2", category: "social")
User.create(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian@gmail.com", password: "password")
Event.create(name: "clean bathroom", category: "chore", group_id: aga.id
Assignment.create(user_id: gentian.id, event_id: clean_bathroom.id