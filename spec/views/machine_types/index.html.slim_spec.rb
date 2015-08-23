require 'rails_helper'

RSpec.describe "machine_types/index", type: :view do
  before(:each) do
    assign(:machine_types, [
      MachineType.create!(
        :name => "Name",
        :description => "MyText",
        :muscle_group => "calves"
      ),
      MachineType.create!(
        :name => "Name",
        :description => "MyText",
        :muscle_group => "calves"
      )
    ])
  end

  it "renders a list of machine_types" do
    render
    assert_select "div.row .small-2", :text => "Name".to_s, :count => 2
    assert_select "div.row .small-6", :text => "MyText".to_s, :count => 2
    assert_select "div.row .small-1", :text => "calves".to_s, :count => 2
  end
end
