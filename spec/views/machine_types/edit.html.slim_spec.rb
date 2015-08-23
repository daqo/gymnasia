require 'rails_helper'

RSpec.describe "machine_types/edit", type: :view do
  before(:each) do
    @machine_type = assign(:machine_type, MachineType.create!(
      :name => "MyString",
      :description => "MyText",
      :muscle_group => "calves"
    ))
  end

  it "renders the edit machine_type form" do
    render

    assert_select "form[action=?][method=?]", machine_type_path(@machine_type), "post" do

      assert_select "input#machine_type_name[name=?]", "machine_type[name]"

      assert_select "textarea#machine_type_description[name=?]", "machine_type[description]"

      assert_select "input#machine_type_muscle_group[name=?]", "machine_type[muscle_group]"
    end
  end
end
