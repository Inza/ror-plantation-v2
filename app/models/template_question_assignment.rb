class TemplateQuestionAssignment < ApplicationRecord
  belongs_to :template
  belongs_to :question
end
