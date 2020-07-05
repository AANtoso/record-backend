class Api::V1::MedicationsController < ApplicationController

    before_action: set_diagnosis

    def index
        @medications = @diagnosis.medications 
        render json: @medications
    end

    def create
        @medication = @diagnosis.create(medication_params)
        render json: @medications
    end

    def show
        @medication = diagnosis.medications.find(params[:id])
        render json: @medication
    end

    def destroy
        @medication = @diagnosis.medications.find(params[:id])
        @medication.destroy
        render json: @diagnosis
    end

    private

    def set_diagnosis
        @diagnosis = Diagnosis.find(params[:diagnosis_id])
    end

    def medication_params
        params.require(:mmedication).permit(:name, :dose, :frequency, :diagnosis_id, :called_in)
    end

end
