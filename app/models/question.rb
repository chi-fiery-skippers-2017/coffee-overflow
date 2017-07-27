class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :author, class_name: 'User'
  has_many :answers
  belongs_to :best_answer, class_name: 'Answer'
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates :content, :author_id, { presence: true }


end
