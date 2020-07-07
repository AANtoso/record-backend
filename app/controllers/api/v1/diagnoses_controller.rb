class Api::V1::DiagnosesController < ApplicationController
    def index
        @diagnoses = Diagnosis.all 
        render json: @diagnoses 
    end

    def show
        @diagnosis = Diagnosis.find(params[:id])
        render json: @diagnosis, include: [:medications]
    end
end
