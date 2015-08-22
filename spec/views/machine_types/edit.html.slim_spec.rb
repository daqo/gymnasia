require 'rails_helper'

RSpec.describe "machine_types/edit", type: :view do
  before(:each) do
    @machine_type = assign(:machine_type, MachineType.create!(
      :name => "MyString",
      :description => "MyText",
      :quantity => 1
    ))
  end

  it "renders the edit machine_type form" do
    render

    assert_select "form[action=?][method=?]", machine_type_path(@machine_type), "post" do

      assert_select "input#machine_type_name[name=?]", "machine_type[name]"

      assert_select "textarea#machine_type_description[name=?]", "machine_type[description]"

      assert_select "input#machine_type_quantity[name=?]", "machine_type[quantity]"
    end
  end
end
