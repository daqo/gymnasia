require 'rails_helper'

RSpec.describe "gyms/edit", type: :view do
  before(:each) do
    @gym = assign(:gym, Gym.create!(
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit gym form" do
    render

    assert_select "form[action=?][method=?]", gym_path(@gym), "post" do

      assert_select "input#gym_name[name=?]", "gym[name]"

      assert_select "input#gym_address[name=?]", "gym[address]"

      assert_select "input#gym_phone[name=?]", "gym[phone]"
    end
  end
end
