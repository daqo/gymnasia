require 'rails_helper'

RSpec.describe "machine_types/index", type: :view do
  before(:each) do
    assign(:machine_types, [
      MachineType.create!(
        :name => "Name",
        :description => "MyText",
        :quantity => 1
      ),
      MachineType.create!(
        :name => "Name",
        :description => "MyText",
        :quantity => 1
      )
    ])
  end

  it "renders a list of machine_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
