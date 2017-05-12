require 'rails_helper'

RSpec.describe "parents/index", type: :view do
  before(:each) do
    assign(:parents, [
      Parent.create!(
        :name => "Name"
      ),
      Parent.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of parents" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
