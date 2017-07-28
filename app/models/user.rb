class User < ActiveRecord::Base
  include BCrypt

  has_many :questions, foreign_key: :author_id
  has_many :answers
  has_many :comments
  has_many :votes

  # attr_accessor :password

  validates :username, :email, { presence: true, uniqueness: true }
  validates :password, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(password)
    @password = Password.create(password)
    self.password_hash = @password
  end

  def self.authenticate(email, input_pw)
    user = User.find_by(email: email)
    password == Password.new(input_pw)
  end


end
