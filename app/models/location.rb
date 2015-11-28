class Location < ActiveRecord::Base
	has_many :irrisets
	has_many :dlyirrigations,through: :irrisets
end
