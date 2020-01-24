require 'rails_helper'

RSpec.describe "stage_events/new", type: :view do
  before(:each) do
    assign(:stage_event, StageEvent.new(
      :prospect => nil,
      :stage_name => "MyString"
    ))
  end

  it "renders new stage_event form" do
    render

    assert_select "form[action=?][method=?]", stage_events_path, "post" do

      assert_select "input[name=?]", "stage_event[prospect_id]"

      assert_select "input[name=?]", "stage_event[stage_name]"
    end
  end
end
