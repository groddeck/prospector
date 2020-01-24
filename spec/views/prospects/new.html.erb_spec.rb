require 'rails_helper'

RSpec.describe "prospects/new", type: :view do
  before(:each) do
    assign(:prospect, Prospect.new(
      :company_name => "MyString",
      :position_name => "MyString",
      :recruiter_name => "MyString",
      :stage_name => "MyString",
      :note => "MyString"
    ))
  end

  it "renders new prospect form" do
    render

    assert_select "form[action=?][method=?]", prospects_path, "post" do

      assert_select "input[name=?]", "prospect[company_name]"

      assert_select "input[name=?]", "prospect[position_name]"

      assert_select "input[name=?]", "prospect[recruiter_name]"

      assert_select "input[name=?]", "prospect[stage_name]"

      assert_select "input[name=?]", "prospect[note]"
    end
  end
end
