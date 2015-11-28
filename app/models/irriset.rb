class Irriset < ActiveRecord::Base
  belongs_to :location
  has_many :dlyirrigations
end
