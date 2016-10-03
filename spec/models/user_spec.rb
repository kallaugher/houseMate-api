require 'rails_helper'

RSpec.describe User, type: :model do

  let(:alice) {User.new(first_name: "Alice", last_name: "Kallaugher", email: "alice@gmail.com", password: "password")}

  it 'should be valid with a name, email and password' do
    expect(alice).to be_valid
  end

  it 'should be invalid without a first name' do
    gentian = User.new(last_name: "bardhoshi", email: "gentian@gmail.com", password: "password")
    expect(gentian).to_not be_valid
  end
  it 'should be invalid without a last name' do
    gentian = User.new(first_name: "gentian", email: "gentian@gmail.com", password: "password")
    expect(gentian).to_not be_valid
  end

  it 'should be invalid without an email' do
    gentian = User.new(first_name: "Gentian", last_name: "Bardhoshi", password: "password")
    expect(gentian).to_not be_valid
  end

  it 'should be invalid without a password' do
    gentian = User.new(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian@gmail.com")
    expect(gentian).to_not be_valid
  end

  it 'should have a full name' do
    gentian = User.new(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian@gmail.com", password: "password")
    expect(gentian.full_name).to eq("Gentian Bardhoshi")
  end

end
