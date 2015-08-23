require 'rails_helper'

RSpec.describe "gyms/index", type: :view do
  before(:each) do
    assign(:gyms, [
      Gym.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone"
      ),
      Gym.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of gyms" do
    render
    assert_select "div.row .small-2", :text => "Name".to_s, :count => 2
    assert_select "div.row .small-4", :text => "Address".to_s, :count => 2
    assert_select "div.row .small-3", :text => "Phone".to_s, :count => 2
  end
end
