require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do

    it "works" do
      #basic test
      params = {
        name: "Jimmy",
        email: "jimmy@dude.com",
        password: "jimmy",
        password_confirmation: "jimmy"
      }
      # @jimmy = User.new(params)
      # expect(@jimmy).to be_valid
      expect(User.new(params)).to be_valid
    end
    it "has a password that is longer than 4 characters" do
      params = {
        name: "Jimmy",
        email: "jimmy@dude.com",
        password: "oop",
        password_confirmation: "oop"
      }
      @jimmy = User.new(params)
      expect(@jimmy).to_not be_valid
    end
    it "matches password and password confirmation fields" do
      params = {
        name: "Jimmy",
        email: "jimmy@dude.com",
        password: "jimmy",
        password_confirmation: "password"
      }
      @jimmy = User.new(params)
      expect(@jimmy).to_not be_valid
    end
  end
  describe ".authenticate_with_credentials" do
    it "logs in with authenticated credentials" do
      params = {
        name: "Jimmy",
        email: "jimmy@dude.com",
        password: "jimmy",
        password_confirmation: "jimmy"
      }
      jimmy = User.new(params)
      jimmy.save
      authenticated_user = User.authenticate_with_credentials("jimmy@dude.com", "jimmy")
      expect(authenticated_user).to eq(jimmy)
    end
  end
end
