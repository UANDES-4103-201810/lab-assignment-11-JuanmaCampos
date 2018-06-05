require 'rails_helper'
RSpec.describe Message, type: :model do
	
	it "testvalidmessage" do
		@user=create(:user)
		@message = build(:message)		
		expect(@message).to be_valid
	end
	
	it "testniluserid" do
		
		@message=build(:message, user_id: nil)		
		expect(@message).to_not be_valid
	end
	it "testnonexistinguser" do
		@user=create(:user)
		@message=build(:message, user_id: 20, date: "2006-06-06", content: "djaksdjk")
				
		expect(@message).to_not be_valid
	end
	
end
