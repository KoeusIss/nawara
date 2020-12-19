class User < ApplicationRecord
  REGEX_PATTERN = /\A[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\z/
  has_secure_password
  validates_presence_of :email
  validates_format_of :email,
                      with: REGEX_PATTERN
  validates_length_of :password, minimum: 6, on: :create
end
