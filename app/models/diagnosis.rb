class Diagnosis < ApplicationRecord
    has_many :medications
    validates :name, presence: true
end
