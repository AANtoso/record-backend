class Medication < ApplicationRecord
    belongs_to :diagnosis
    validates :name, presence: true
    validates :called_in, inclusions: { in: [ true, false ]}
end
