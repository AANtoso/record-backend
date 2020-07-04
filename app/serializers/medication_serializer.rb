class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :dose, :frequency, :diagnosis_id, :called_in
end
