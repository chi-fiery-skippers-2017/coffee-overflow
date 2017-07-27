class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :author, class_name: :user
  has_many :answers

  has_many :comments, as :commentable
  has_many :votes, as :votable

  has_one :best_answer, class_name: :answer

end
