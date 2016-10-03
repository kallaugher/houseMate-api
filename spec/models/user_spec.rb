require 'rails_helper'

RSpec.describe User, type: :model do

  let(:alice) {User.new(first_name: "Alice", last_name: "Kallaugher", email: "alice@gmail.com", password: "password")}
<<<<<<< HEAD
  let!(:gentian) {User.create(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian@gmail.com", password: "password", group_id: aga.id)}
=======
  let(:gentian) {User.new(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian@gmail.com", password: "password")}
  let(:house_party) {Event.create(id: 1, name: "Dodgeball Mayhem 2")}
  let(:clean_bathroom) {Assignment.create(user_id: 1, event_id: 1}
>>>>>>> 44aca788a486a5c2ae8c7147c75a3c1cd0475154

  let(:aga) {Group.create(name: "A Good Abode")}

  context 'User validations' do
    it 'should be valid with a first name, last name, email and password' do
      expect(alice).to be_valid
    end

    it 'should be invalid without a first name' do
      invalid_gentian = User.new(last_name: "bardhoshi", email: "gentian@gmail.com", password: "password")
      expect(invalid_gentian).to_not be_valid
    end

    it 'should be invalid without a last name' do
      invalid_gentian = User.new(first_name: "gentian", email: "gentian@gmail.com", password: "password")
      expect(invalid_gentian).to_not be_valid
    end

    it 'should be invalid without an email' do
      invalid_gentian = User.new(first_name: "Gentian", last_name: "Bardhoshi", password: "password")
      expect(invalid_gentian).to_not be_valid
    end

    it 'should be invalid without a password' do
      invalid_gentian = User.new(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian@gmail.com")
      expect(invalid_gentian).to_not be_valid
    end
  end

  context 'User helper methods' do
    it 'should have a full name' do
      expect(gentian.full_name).to eq("Gentian Bardhoshi")
    end

    it 'should respond with initials to #get_initials' do
      expect(gentian.get_initials).to eq("GB")
    end
  end

  context 'User relationships' do
    let!(:house_party) {Event.create(name: "Dodgeball Mayhem 2", group_id: aga.id)}
    let!(:clean_bathroom) {Event.create(name: "clean bathroom", group_id: aga.id)}
    let!(:clean_bathroom_assign) {Assignment.create(user_id: gentian.id, event_id: clean_bathroom.id)}

    it 'should belong to a group' do
      expect(!!gentian.group).to eq(true)
      expect(gentian.group).to eq(aga)
    end

    it 'should have many group events' do
      expect(gentian.group_events).to eq(aga.events)
      expect(gentian.group_events).to include(house_party)
    end

    it 'should have assigned events' do
      expect(gentian.assigned_events).to include(clean_bathroom)
    end
  end
end
