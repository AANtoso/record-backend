class Api::V1::MedicationsController < ApplicationController

    def index
        @medications = @diagnosis.medications 
        render json: @medications
    end

    def create
        if params[:diagnosis_id]
            @diagnosis = Diagnosis.find(params[:diagnosis_id])
            @medication = @diagnosis.medications.create(medication_params)
            render json: @medication
        end
    end

    def show
        if params[:diagnosis_id]
            @diagnosis = Diagnosis.find(params[:diagnosis_id])
            @medication = @diagnosis.medications.find(params[:id])
            render json: @medication
        end
    end

    def destroy
        if params[:diagnosis_id]
            @diagnosis = Diagnosis.find(params[:diagnosis_id])
            @medication = @diagnosis.medications.find(params[:id])
            @medication.destroy
            render json: {
                medication: @medication,
                message: "Successfully deleted medication!"
            }
        end
    end

    private


    def medication_params
        params.require(:medication).permit(:name, :dose, :frequency, :diagnosis_id, :called_in)
    end

end
