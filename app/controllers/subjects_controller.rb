class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  permits :title, :code

  def index
    @subjects = Subject.all
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def edit
  end

  def create(subject)
    @subject = Subject.new(subject)

    if @subject.save
      redirect_to subjects_path, notice: 'Subject was successfully created.'
    else
      render :new
    end
  end

  def update(subject)
    if @subject.update(subject)
      redirect_to subjects_path, notice: 'Subject was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @subject.destroy
    redirect_to subjects_url, notice: 'Subject was successfully destroyed.'
  end

private
  def set_subject(id)
    @subject = Subject.find(id)
  end
end
