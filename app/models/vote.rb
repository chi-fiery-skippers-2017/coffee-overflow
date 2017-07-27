class Vote < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :voter, class_name: :user
  #polymorphic belongs_to answer/question/comment
end
