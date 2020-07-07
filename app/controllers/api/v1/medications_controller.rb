class Api::V1::MedicationsController < ApplicationController

    # before_action: set_diagnosis

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
                message: "Successfully deleted medication"
            }
        end
    end

    private

    # def set_diagnosis
    #     @diagnosis = Diagnosis.find(params[:diagnosis_id])
    # end

    def medication_params
        params.require(:medication).permit(:name, :dose, :frequency, :diagnosis_id, :called_in)
    end

end
