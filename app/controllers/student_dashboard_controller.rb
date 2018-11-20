class StudentDashboardController < ApplicationController
  def index
    @subjects = Subject.includes([:study_programs]).all
    #@subjects = Subject.all # FUJKYYYY, here is N+1 problem!!!
  end
end
