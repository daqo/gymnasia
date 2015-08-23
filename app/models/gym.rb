class Gym < ActiveRecord::Base
	validates_presence_of :name

	scope :first, -> { order("created_at").first }
  	scope :last, -> { order("created_at DESC").first }
end
