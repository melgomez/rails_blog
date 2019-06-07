class User < ApplicationRecord
  has_many :comments

  validates :username, presence: true, uniqueness:true,  length: { minimum: 3, maximum 25};

  VALID_EMAIL_REGEX: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 105},
            uniqueness: { case_sensitive VALID_EMAIL_REGEX }
end
