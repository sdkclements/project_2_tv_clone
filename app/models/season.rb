class Season < ApplicationRecord
	has_many :episodes
  	belongs_to :show, dependent: :destroy
end
