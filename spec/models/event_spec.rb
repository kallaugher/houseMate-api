require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:aga) {Group.create(name: "A Good Abode")}
  let!(:house_party) {Event.new(group_id: aga.id, name: "Dodgeball Mayhem 2", category: "social", created_by: gentian.id)}
  let(:gentian) {User.create(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian@gmail.com", password: "password")}
  let!(:clean_bathroom) {Event.create(name: "clean bathroom", category: "chore", group_id: aga.id, created_by: gentian.id)}
  let!(:clean_bathroom_assign) {Assignment.create(user_id: gentian.id, event_id: clean_bathroom.id)}

  context 'validations' do
    it 'should be valid with a name, category, and creator' do
      expect(house_party).to be_valid
    end

    it 'should be invalid without a name' do
      invalid_house_party = Event.new(category: "social")
      expect(invalid_house_party).to_not be_valid
    end

    it 'should be invalid without a category' do
      invalid_house_party = Event.new(name: "Dodgeball Mayhem 2")
      expect(invalid_house_party).to_not be_valid
    end

    it 'should be invalid without a creator' do
      invalid_house_party = Event.new(name: "Dodgeball Mayhem 2", category: "social")
      expect(invalid_house_party).to_not be_valid
    end
  end

  context 'relationships' do
    it 'should belong to a group' do
      expect(house_party.group).to eq(aga)
    end

    it 'should know if it is assigned' do
      expect(clean_bathroom.assigned?).to eq(true)
      expect(house_party.assigned?).to eq(false)
    end

    it 'should know who it is assigned to' do
      expect(clean_bathroom.assigned_to).to include(gentian)
    end

    it 'should know who it was created by' do
      expect(clean_bathroom.created_by).to eq(gentian.id)
    end
  end
end
