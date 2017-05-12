require 'rails_helper'

RSpec.describe "babysitters/index", type: :view do
  before(:each) do
    assign(:babysitters, [
      Babysitter.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :city => "City",
        :phone_number => "Phone Number",
        :rate => 2
      ),
      Babysitter.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :city => "City",
        :phone_number => "Phone Number",
        :rate => 2
      )
    ])
  end

  it "renders a list of babysitters" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
