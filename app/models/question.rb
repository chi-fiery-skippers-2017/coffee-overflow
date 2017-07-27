class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :author, class_name: :user
  has_many :answers

  has_many :comments
  #has_many :comments, as :?
  has_many :votes
  #has_many polymorphic
  has_one :best_answer, class_name: :answer

end
