class CreateProspects < ActiveRecord::Migration[6.0]
  def change
    create_table :prospects do |t|
      t.string :company_name
      t.string :position_name
      t.string :recruiter_name
      t.string :stage_name
      t.string :note

      t.timestamps
    end
  end
end
