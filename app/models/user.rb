class User < ApplicationRecord
  devise :database_authenticatable, :validatable

  belongs_to :company, optional: true

  def name
    email.split("@").first.capitalize
  end
end
