require 'rails_helper'

RSpec.describe Gym, type: :model do
  context "with valid params" do
  	it "creates a new gym and assigns the attributes" do
  		valid_attributes = {name: "valid_name", address: "dummy address", phone: "some phone number" }
  		new_gym = Gym.new(valid_attributes)
  		expect(new_gym.name).to eq("valid_name")
  		expect(new_gym.address).to eq("dummy address")
  		expect(new_gym.phone).to eq("some phone number")
  	end
  end

  context "with invalid params" do
  	it "fails to save the new gym if the name is absent" do
  		invalid_attributes = { address: "Yet another awesome machine", phone: "dummy" }
		new_gym = Gym.new(invalid_attributes)
		expect { new_gym.save! }.to raise_error ActiveRecord::RecordInvalid, 
														"Validation failed: Name can't be blank"
  	end

  	it "fails to save the new gym if the name is empty" do
  		invalid_attributes = {name: "", address: "Yet another awesome machine", phone: "dummy"  }
		new_gym = Gym.new(invalid_attributes)
		expect { new_gym.save! }.to raise_error ActiveRecord::RecordInvalid, 
														"Validation failed: Name can't be blank"
  	end
  end
end
