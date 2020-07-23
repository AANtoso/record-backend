class Medication < ApplicationRecord
    belongs_to :diagnosis
    validates :name, presence: true
end
