require 'rails_helper'

RSpec.feature "as a babysitter", type: :feature do
  it "see current count of babysitters" do
    visit new_babysitter_path
    expect('Join 0 BabySATters and counting')

    Babysitter.create(sat_score: 1500)
    
    visit new_babysitter_path
    expect('Join 1 BabySATters and counting')
  end
end
