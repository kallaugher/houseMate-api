require 'rails_helper'

let(:alice) {User.new(name: "Alice", email: "alice@gmail.com", password: "password")}

RSpec.describe User, type: :model do
  it 'should be valid with a name, email and password'
    expect(alice).to be_valid
  end
end



