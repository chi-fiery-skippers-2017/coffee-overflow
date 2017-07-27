require "BCrypt"

class User < ActiveRecord::Base
  include BCrypt

  has_many :questions, foreign_key: :author_id
  has_many :answers
  has_many :comments
  has_many :votes

  attr_accessor :password

  validates :username, :email, { presence: true, uniqueness: true }
  validates :password, presence: true

  def password=(password)
    self.password_hash = BCrypt::Password.create(self.password)
  end

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    generated_hash = BCrypt::Password.new(user.password_hash)
    generated_hash == password
  end


end
