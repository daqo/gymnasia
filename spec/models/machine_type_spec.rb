require 'rails_helper'

RSpec.describe MachineType, type: :model do
  context "with valid params" do
  	it "creates a new machine type and assigns the attributes" do
  		valid_attributes = {name: "valid_name", description: "Yet another awesome machine", quantity: 1 }
  		new_machine_type = MachineType.new(valid_attributes)
  		expect(new_machine_type.name).to eq("valid_name")
  		expect(new_machine_type.description).to eq("Yet another awesome machine")
  		expect(new_machine_type.quantity).to eq(1)
  	end
  end

  context "with invalid params" do
  	it "fails to save the new machine type if the quantity is negative" do
  		invalid_attributes = {name: "another_valid_name", description: "Yet another awesome machine", quantity: -1 }
		new_machine_type = MachineType.new(invalid_attributes)
		expect { new_machine_type.save! }.to raise_error ActiveRecord::RecordInvalid, 
														"Validation failed: Quantity must be greater than 0"
  	end

  	it "fails to save the new machine type if the quantity is not integer" do
  		invalid_attributes = {name: "another_valid_name", description: "Yet another awesome machine", quantity: 12.5 }
		new_machine_type = MachineType.new(invalid_attributes)
		expect { new_machine_type.save! }.to raise_error ActiveRecord::RecordInvalid, 
														"Validation failed: Quantity must be an integer"
  	end

  	it "fails to save the new machine type if the quantity is absent" do
  		invalid_attributes = {name: "another_valid_name", description: "Yet another awesome machine" }
		new_machine_type = MachineType.new(invalid_attributes)
		expect { new_machine_type.save! }.to raise_error ActiveRecord::RecordInvalid, 
														"Validation failed: Quantity can't be blank, Quantity is not a number"
  	end

  	it "fails to save the new machine type if the name is absent" do
  		invalid_attributes = {name: "", description: "Yet another awesome machine", quantity:1  }
		new_machine_type = MachineType.new(invalid_attributes)
		expect { new_machine_type.save! }.to raise_error ActiveRecord::RecordInvalid, 
														"Validation failed: Name can't be blank"
  	end
  end
end
