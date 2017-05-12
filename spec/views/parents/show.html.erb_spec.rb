require 'rails_helper'

RSpec.describe "parents/show", type: :view do
  before(:each) do
    @parent = assign(:parent, Parent.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
