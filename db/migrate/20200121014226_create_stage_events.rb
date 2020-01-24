class CreateStageEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :stage_events do |t|
      t.references :prospect, null: false, foreign_key: true
      t.string :stage_name

      t.timestamps
    end
  end
end
