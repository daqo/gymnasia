require 'rails_helper'

RSpec.describe "gyms/new", type: :view do
  before(:each) do
    assign(:gym, Gym.new(
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new gym form" do
    render

    assert_select "form[action=?][method=?]", gyms_path, "post" do

      assert_select "input#gym_name[name=?]", "gym[name]"

      assert_select "input#gym_address[name=?]", "gym[address]"

      assert_select "input#gym_phone[name=?]", "gym[phone]"
    end
  end
end
