class Admin < ApplicationRecord
  validates :username, presence: true, length: { maximum: 12 }, uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true


private

end
