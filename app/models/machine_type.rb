class MachineType < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :quantity
	validates :quantity, numericality: { only_integer: true, greater_than: 0}

	scope :first, -> { order("created_at").first }
  	scope :last, -> { order("created_at DESC").first }
end
