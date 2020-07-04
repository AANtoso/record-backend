class DiagnosisSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :medications
end
