require 'rails_helper'

RSpec.describe "stage_events/show", type: :view do
  before(:each) do
    @stage_event = assign(:stage_event, StageEvent.create!(
      :prospect => nil,
      :stage_name => "Stage Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Stage Name/)
  end
end
