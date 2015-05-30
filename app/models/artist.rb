class Artist < ActiveRecord::Base
	has_many :albums
	has_many :songs, through: :albums
	# has_and_belongs_to_many :songs
	validates :name, presence: true
end
