require 'rails_helper'

RSpec.describe MachineType, type: :model do
  context "with valid params" do
  	it "creates a new machine type and assigns the attributes" do
  		valid_attributes = {name: "valid_name", description: "Yet another awesome machine", muscle_group: "calves" }
  		new_machine_type = MachineType.new(valid_attributes)
  		expect(new_machine_type.name).to eq("valid_name")
  		expect(new_machine_type.description).to eq("Yet another awesome machine")
  		expect(new_machine_type.muscle_group).to eq("calves")
  	end
  end

  context "with invalid params" do
  	it "fails to save the new machine type if the name is absent" do
  		invalid_attributes = {name: "", description: "Yet another awesome machine"  }
		new_machine_type = MachineType.new(invalid_attributes)
		expect { new_machine_type.save! }.to raise_error ActiveRecord::RecordInvalid, 
														"Validation failed: Name can't be blank"
  	end
  end
end
