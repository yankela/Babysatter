require 'rails_helper'

RSpec.describe "parents/edit", type: :view do
  before(:each) do
    @parent = assign(:parent, Parent.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit parent form" do
    render

    assert_select "form[action=?][method=?]", parent_path(@parent), "post" do

      assert_select "input#parent_name[name=?]", "parent[name]"
    end
  end
end
