class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, if: ->(record) { record.new_record? || record.password.present? || password_confirmation.present?  }
  has_secure_password
end
