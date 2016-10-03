require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:house_party) {Event.new(group_id: 1, name: "Dodgeball Mayhem 2", type: "social")}
  let(:aga) {Group.create(name: "A Good Abode")}
  let(:gentian) {User.create(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian@gmail.com", password: "password")}
  let(:clean_bathroom) {Assignment.create(user_id: 1, event_id: 1}

  it 'should be valid with a name and type' do
    expect(house_party).to be_valid
  end

  it 'should be invalid without a name' do
    invalid_house_party = Event.new(type: "social")
    expect(invalid_house_party).to_not be_valid
  end
  it 'should be invalid without a type' do
    invalid_house_party = Event.new(name: "Dodgeball Mayhem 2")
    expect(invalid_house_party).to_not be_valid
  end

  it 'should belong to a group' do
    expect(!!house_party).to eq("true")
    expect(house_party.group).to eq(aga)
  end

end