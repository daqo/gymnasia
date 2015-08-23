require 'rails_helper'

RSpec.describe "machine_types/show", type: :view do
  before(:each) do
    @machine_type = assign(:machine_type, MachineType.create!(
      :name => "Name",
      :description => "MyText",
      :muscle_group => "something"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/something/)
  end
end
