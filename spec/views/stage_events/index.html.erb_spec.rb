require 'rails_helper'

RSpec.describe "stage_events/index", type: :view do
  before(:each) do
    assign(:stage_events, [
      StageEvent.create!(
        :prospect => nil,
        :stage_name => "Stage Name"
      ),
      StageEvent.create!(
        :prospect => nil,
        :stage_name => "Stage Name"
      )
    ])
  end

  it "renders a list of stage_events" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Stage Name".to_s, :count => 2
  end
end
