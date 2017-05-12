require 'rails_helper'

RSpec.describe "parents/new", type: :view do
  before(:each) do
    assign(:parent, Parent.new(
      :name => "MyString"
    ))
  end

  it "renders new parent form" do
    render

    assert_select "form[action=?][method=?]", parents_path, "post" do

      assert_select "input#parent_name[name=?]", "parent[name]"
    end
  end
end
