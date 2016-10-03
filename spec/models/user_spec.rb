require 'rails_helper'

RSpec.describe User, type: :model do

  let(:alice) {User.new(name: "Alice", email: "alice@gmail.com", password: "password")}

  it 'should be valid with a name, email and password' do
    expect(alice).to be_valid
  end

  it 'should be invalid without a name' do
    let(:gentian) {User.new(email: "gentian@gmail.com", password: "password")}
    expect(gentian).to_not be_valid
  end

  it 'should be invalid without an email' do
    let(:gentian) {User.new(name: "Gentian", password: "password")}
    expect(gentian).to_not be_valid
  end

  it 'should be invalid without a password' do
    let(:gentian) {User.new(name: "Gentian", email: "gentian@gmail.com")}
    expect(gentian).to_not be_valid
  end
end
