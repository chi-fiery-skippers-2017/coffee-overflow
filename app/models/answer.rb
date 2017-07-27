class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :author, class_name: :user
  belongs_to :question

  has_many :comments, as :commentable
  has_many :votes, as :votable

  #belongs_to :question, as: :best_answer ??????

end


#Teacher Question: Because of best_answer, how/do we need an additional association with question
