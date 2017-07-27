class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :author, class_name: 'User'
  belongs_to :question
  has_one :question, as: :best_answer
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates :content, :author_id, :question_id, { presence: true }

end


#Teacher Question: Because of best_answer, how/do we need an additional association with question
