class Comment < ActiveRecord::Base
  # Remember to create a migration!
  has_many :votes
  belongs_to :author, class_name: 'User'
  belongs_to :commentable, polymorphic: true

  validates :content, :author_id, :commentable_id, :commentable_type, { presence: true }

end
