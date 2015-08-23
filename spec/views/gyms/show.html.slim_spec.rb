require 'rails_helper'

RSpec.describe "gyms/show", type: :view do
  before(:each) do
    @gym = assign(:gym, Gym.create!(
      :name => "Name",
      :address => "Address",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone/)
  end
end
