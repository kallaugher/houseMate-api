require 'rails_helper'

RSpec.describe User, type: :model do
  let(:alice) {User.new(first_name: "Alice", last_name: "Kallaugher", email: "alice@gmail.com", password: "password")}
  let(:gentian) {User.new(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian@gmail.com", password: "password")}
  let(:house_party) {Event.create(id: 1, name: "Dodgeball Mayhem 2")}
  let(:clean_bathroom) {Assignment.create(user_id: 1, event_id: 1}


  it 'should be valid with a name, email and password' do
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

  it 'should have a full name' do
    expect(gentian.full_name).to eq("Gentian Bardhoshi")
  end

  it 'should respond with intials to #get_initials' do
    expect(gentian.get_initials).to eq("GB")
  end

  it 'should belong to a group' do
    expect(!!gentian.group).to eq("true")
    expect(gentian.group).to eq(aga)
  end

  it 'should have many events through groups' do
    expect(gentian.events).to be_a_kind_of(Array)
    expect(gentian.events).to eq(aga.events)
    expect(gentian.events).to incude(house_party)
  end

  it 'should have assignments through events' do
    expect(gentian.assignments).to be_a_kind_of(Array)
    expect(gentian.assignments).to eq(house_party.assignments)
  end

end