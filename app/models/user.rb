class User < ApplicationRecord
	validates :username, presence:true, length: {minimum: 5}, uniqueness: true
	validates :email, presence: true
	validates :password, presence: true, length: { in 8..20 }, confirmation: true
	validates :pass_confirmation, presence: true
end
