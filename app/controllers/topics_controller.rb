class TopicsController < ApplicationController
  before_action :set_subject
  before_action :set_topic, only: [:edit, :update, :destroy]

  permits :title

  def new
    @topic = Topic.new(subject: @subject)
  end

  def edit
  end

  def create(topic)
    @topic = Topic.new(topic)
    @topic.subject = @subject

    if @topic.save
      redirect_to subject_path(@subject), notice: 'Topic was successfully created.'
    else
      render :new
    end
  end

  def update(topic)
    if @topic.update(topic)
      redirect_to subject_path(@subject), notice: 'Topic was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy
    redirect_to subject_path(@subject), notice: 'Topic was successfully destroyed.'
  end

private
  def set_subject(subject_id)
    @subject = Subject.find(subject_id)
  end

  def set_topic(id)
    @topic = Topic.find(id)
  end
end
