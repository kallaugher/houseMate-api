require 'rails_helper'

RSpec.describe User, type: :model do

  let(:alice) {User.new(name: "Alice", email: "alice@gmail.com", password: "password")}

  it 'should be valid with a name, email and password' do
    expect(alice).to be_valid
  end
end
