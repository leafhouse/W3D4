# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  user_id          :integer
#  answer_choice_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord

  validate :respondent_already_answered

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice

    
  has_one :question,
    through: :answer_choice,
    source: :question



  def sibling_responses
    s = self.question.responses
    s.where.not(id: self.id)
  end

  def respondent_already_answered?
    self.sibling_responses.each do |sib|
      if sib.user_id == self.user_id
        errors[:user_id] << "YOU ALREADY ANSWERED THIS >:( " 
      end
    end
  end

end
