require 'rails_helper'

RSpec.feature "as an anonymous user", type: :feature do
  before do
    visit root_path
  end

  it "views the homepage" do
    expect(page).to have_content("Welcome")
  end

  context "registration" do
    context "babysitter" do
      it "creates a babysatter account" do
        expect(page).to have_content("Become a BabySATter")
        click_link("Become a BabySATter")
        expect(page).to have_content "Join 0 BabySATters and counting!"

        fill_in 'First name', with: 'Stephanie'
        fill_in 'Last name', with: 'Acosta'
        fill_in 'City', with: 'Miami'
        fill_in 'Phone number', with: '(305)111-2222'
        fill_in 'Rate', with: "20"
        fill_in 'Sat score', with: '1500'

        click_button ("Create Babysitter")

        expect(page).to have_content "Welcome, Stephanie"

        visit new_babysitter_path
        expect(page).to have_content "Join 1 BabySATters and counting!"
      end

      it "create an account without an SAT score" do
        expect(page).to have_content("Become a BabySATter")
        click_link("Become a BabySATter")

        fill_in 'First name', with: 'Stephanie'
        fill_in 'Last name', with: 'Acosta'
        fill_in 'City', with: 'Miami'
        fill_in 'Phone number', with: '(305)111-2222'
        fill_in 'Rate', with: "20"
        click_button ("Create Babysitter")

        expect(page).to have_content "You need to enter your SAT score!"
      end
    end

    context "parent" do
      it "create a parent account" do
        click_link "Become a Parent"

        fill_in "Name", with: "Delores"
        click_button "Create Parent"

        expect(page).to have_content "Delores"
      end
    end

    context "login" do
      context 'babysitter' do
        let(:babysitter) do
          Babysitter.create(
          first_name: Faker::Name.first_name,
           last_name: Faker::Name.last_name
          )
        end

        it "successful login" do
          click_link "BabySATter Login"

          fill_in "Email", with: babysitter.email
          fill_in "Password", with: "abc123"
          click_button "Login"

          expect(page).to have_content "Welcome #{babysitter.first_name}"
        end
      end
      context 'parent' do
      end
    end
  end
end
