# frozen_string_literal: true
class User < ApplicationRecord
  has_secure_password

  has_many :authors
  has_many :ideas
  has_many :sources, through: :authors
  has_many :quotes, through: :sources

  validates :email, presence: true, uniqueness: true
end
