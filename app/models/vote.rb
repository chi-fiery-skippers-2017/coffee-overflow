class Vote < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :voter, class_name: :user

  belongs_to :votable, polymorphic: true
end
