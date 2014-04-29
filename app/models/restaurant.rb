class Restaurant < ActiveRecord::Base
	belongs_to :user
	has_many :courses
	has_many :tables
	validates :name, presence: true, length: { maximum: 140}
	validates :user_id, presence: true

	def shown_courses
		Course.where("restaurant_id = ?", id)
	end
end
