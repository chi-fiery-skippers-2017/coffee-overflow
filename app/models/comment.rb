class Comment < ActiveRecord::Base
  # Remember to create a migration!
  has_many :votes
  belongs_to :author, class_name :user
  belongs_to :commentable, polymorphic: true

end