require 'rails_helper'

RSpec.describe "babysitters/show", type: :view do
  before(:each) do
    @babysitter = assign(:babysitter, Babysitter.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :city => "City",
      :phone_number => "Phone Number",
      :rate => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/2/)
  end
end
