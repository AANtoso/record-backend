class Medication < ApplicationRecord
    belongs_to :diagnosis
    validates :name, :dose, :frequency, :called_in, presence: true
end
