require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:headbanders){Group.create(name:"The Headband House")}
  let(:alex){User.create(first_name: "Alex", last_name: "Sanborn", email: "alex@gmail.com", password: "password")}
  let(:movie_night) {Event.create(name:"Movie night")}

  context 'Group validations' do
    it 'should be valid with a name' do
      expect(headbanders).to be_valid
    end

    it 'should be invalid without a name' do
      no_name = Group.new()
      expect(no_name).to_not be_valid
    end

    it 'should be invalid with blank spaces' do
      blank_spaces = Group.new(name: "   ")
      expect(blank_spaces).to_not be_valid
    end
  end

  context 'Group relationships' do
    it 'is associated with a user' do
      headbanders.users << alex
      expect(headbanders.users).to include(alex)
    end

    it 'is associated with an event' do
      headbanders.events << movie_night
      expect(headbanders.events).to include(movie_night)
    end
  end
end
