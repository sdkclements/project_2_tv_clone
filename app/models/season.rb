class Season < ApplicationRecord
	has_many :episodes
  belongs_to :show
end
