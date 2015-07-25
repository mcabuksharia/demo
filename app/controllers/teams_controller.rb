class TeamsController < ApplicationController
  def index
  end

  def new
  end

  def show
	#debugger	
	@team =Team.find_by_team_name("india")
	#render team_path(@team)

  end

  def edit
  end
end
