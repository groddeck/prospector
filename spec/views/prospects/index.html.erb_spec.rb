require 'rails_helper'

RSpec.describe "prospects/index", type: :view do
  before(:each) do
    assign(:prospects, [
      Prospect.create!(
        :company_name => "Company Name",
        :position_name => "Position Name",
        :recruiter_name => "Recruiter Name",
        :stage_name => "Stage Name",
        :note => "Note"
      ),
      Prospect.create!(
        :company_name => "Company Name",
        :position_name => "Position Name",
        :recruiter_name => "Recruiter Name",
        :stage_name => "Stage Name",
        :note => "Note"
      )
    ])
  end

  it "renders a list of prospects" do
    render
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Position Name".to_s, :count => 2
    assert_select "tr>td", :text => "Recruiter Name".to_s, :count => 2
    assert_select "tr>td", :text => "Stage Name".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
