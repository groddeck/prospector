require 'rails_helper'

RSpec.describe "prospects/show", type: :view do
  before(:each) do
    @prospect = assign(:prospect, Prospect.create!(
      :company_name => "Company Name",
      :position_name => "Position Name",
      :recruiter_name => "Recruiter Name",
      :stage_name => "Stage Name",
      :note => "Note"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Position Name/)
    expect(rendered).to match(/Recruiter Name/)
    expect(rendered).to match(/Stage Name/)
    expect(rendered).to match(/Note/)
  end
end
