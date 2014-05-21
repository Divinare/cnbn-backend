class Event < ActiveRecord::Base
	has_many :participants, dependent: :destroy
    validates :name, presence: true, length: {in: 3..30}
    validates :description, presence: true

end
