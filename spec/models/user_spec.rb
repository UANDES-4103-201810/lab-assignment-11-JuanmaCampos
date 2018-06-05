require 'rails_helper'
RSpec.describe User, type: :model do
	
	it "testvaliduser" do
		@user = build(:user)		
		expect(@user).to be_valid
	end
	
	it "testuniqueusername" do
		@user=create(:user, username: "user1", email: "email@miuandes.cl", password: "abc12345")
		@user2=build(:user, username: "user1", email: "email2@miuandes.cl", password: "lala123")
		expect(@user2).to_not be_valid
	end
	it "testuniqueemail" do
		@user=create(:user, username: "user1", email: "email@miuandes.cl", password: "abc12345")
		@user2=build(:user, username: "user2", email: "email@miuandes.cl", password:"lala123")
		expect(@user2).to_not be_valid
	end
	it "testusernamelength" do
		
		@user=build(:user, username: "baaaaaaaaaaaaaaaaaaaa")
		expect(@user).to_not be_valid
	end

end
