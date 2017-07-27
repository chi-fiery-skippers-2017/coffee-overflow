class Vote < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :voter, class_name: 'User'
  belongs_to :votable, polymorphic: true

  validates :voter_id, :votable_id, :votable_type, :value, { presence: true }

end
