class CreateJoinTableTeamMember < ActiveRecord::Migration
  def change
    create_join_table :teams, :members do |t|
      # t.index [:team_id, :member_id]
      # t.index [:member_id, :team_id]
    end
  end
end
