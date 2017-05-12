require 'rails_helper'

RSpec.feature "as a parent", type: :feature do
  # login
  before do
    # create parent
    # visit root_path
    # click on "Login as Parent"
    # fill_in form
    # click "Login"
  end

  # creates parent
  let(:parent) do
    Parent.create(name: Faker::Name.first_name)
  end

  it "sees all babysitters" do
    # given
    3.times do
      Babysitter.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      sat_score: (0..1600).to_a.sample
      )
    end
    # when
    visit parent_path(parent)

    # then
    Babysitter.all.each do |babysitter|
      expect(page).to have_content(babysitter.first_name)
    end
  end
  # it "can view babysitter profile"
  # it "can see other local babysitters on the babysitter profile"
end
