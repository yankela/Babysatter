require 'rails_helper'

RSpec.describe "babysitters/new", type: :view do
  before(:each) do
    assign(:babysitter, Babysitter.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :city => "MyString",
      :phone_number => "MyString",
      :rate => 1
    ))
  end

  it "renders new babysitter form" do
    render

    assert_select "form[action=?][method=?]", babysitters_path, "post" do

      assert_select "input#babysitter_first_name[name=?]", "babysitter[first_name]"

      assert_select "input#babysitter_last_name[name=?]", "babysitter[last_name]"

      assert_select "input#babysitter_city[name=?]", "babysitter[city]"

      assert_select "input#babysitter_phone_number[name=?]", "babysitter[phone_number]"

      assert_select "input#babysitter_rate[name=?]", "babysitter[rate]"
    end
  end
end
