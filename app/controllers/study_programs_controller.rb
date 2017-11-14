class StudyProgramsController < ApplicationController
  before_action :set_study_program, only: [:edit, :update, :destroy]

  permits :title

  def index
    @study_programs = StudyProgram.all
  end

  def new
    @study_program = StudyProgram.new
  end

  def edit
  end

  def create(study_program)
    @study_program = StudyProgram.new(study_program)

    if @study_program.save
      redirect_to study_programs_path, notice: 'Study program was successfully created.'
    else
      render :new
    end
  end

  def update(study_program)
    if @study_program.update(study_program)
      redirect_to study_programs_path, notice: 'Study program was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @study_program.destroy
    redirect_to study_programs_url, notice: 'Study program was successfully destroyed.'
  end

private
  def set_study_program(id)
    @study_program = StudyProgram.find(id)
  end
end
