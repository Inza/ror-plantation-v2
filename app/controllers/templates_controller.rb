class TemplatesController < ApplicationController
  before_action :set_subject
  before_action :set_template, only: [:edit, :update, :destroy]

  permits :title, topic_ids: []

  def new
    @template = Template.new(subject: @subject)
  end

  def edit
  end

  def create(template)
    @template = Template.new(template)
    @template.subject = @subject

    if @template.save
      redirect_to subject_path(@subject), notice: 'Template was successfully created.'
    else
      render :new
    end
  end

  def update(template)
    if @template.update(template)
      redirect_to subject_path(@subject), notice: 'Template was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @template.destroy
    redirect_to subject_path(@subject), notice: 'Template was successfully destroyed.'
  end

private
  def set_subject(subject_id)
    @subject = Subject.find(subject_id)
  end

  def set_template(id)
    @template = Template.find(id)
  end
end
