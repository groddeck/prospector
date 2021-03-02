class AddUserToProspect < ActiveRecord::Migration[6.0]
  def change
    add_reference :prospects, :user, foreign_key: true
  end
end
