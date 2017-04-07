require 'rails_helper'

RSpec.describe User, type: :model do
    it "all fields must be required" do
        user = User.new(ninja_name:"Joe Montanna", ninja_description:"Montanna")
        user 2 = User.new(ninja_name:"", ninja_description:"")
        expect(user).to be_valid;
        expect(user2).not_to be_valid;
    end
end
