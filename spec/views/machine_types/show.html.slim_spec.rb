require 'rails_helper'

RSpec.describe "machine_types/show", type: :view do
  before(:each) do
    @machine_type = assign(:machine_type, MachineType.create!(
      :name => "Name",
      :description => "MyText",
      :quantity => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
