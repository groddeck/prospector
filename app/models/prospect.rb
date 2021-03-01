class Prospect < ApplicationRecord
  has_many :notes
  has_many :stage_events

  STAGES = [
    '',
    'Submitted',
    'Screening scheduled',
    'Screening done',
    '1st-Round call scheduled',
    '1st-Round call done',
    'On-site scheduled',
    'On-site done',
    'Post-final scheduled',
    'Post-final done'
  ]

  after_create :init_stage

  def init_stage
    self.stage_events << StageEvent.new(stage_name: STAGES.first)
  end

  def advance!
    i = stage_index
    new_stage_name = STAGES[i+1]
    self.stage_events << StageEvent.new(stage_name: new_stage_name)
    self.update(stage_name: new_stage_name)
  end

  def revert!
    i = stage_index
    new_stage_name = STAGES[i-1]
    self.stage_events << StageEvent.new(stage_name: new_stage_name)
    self.update(stage_name: new_stage_name)
  end

  def stage_index
    STAGES.find_index(self.stage_events.last.stage_name)
  end
end
