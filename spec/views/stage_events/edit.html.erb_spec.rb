require 'rails_helper'

RSpec.describe "stage_events/edit", type: :view do
  before(:each) do
    @stage_event = assign(:stage_event, StageEvent.create!(
      :prospect => nil,
      :stage_name => "MyString"
    ))
  end

  it "renders the edit stage_event form" do
    render

    assert_select "form[action=?][method=?]", stage_event_path(@stage_event), "post" do

      assert_select "input[name=?]", "stage_event[prospect_id]"

      assert_select "input[name=?]", "stage_event[stage_name]"
    end
  end
end
