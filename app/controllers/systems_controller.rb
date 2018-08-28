class SystemsController < ApplicationController
    before_action :set_system, only: [:show, :edit, :update, :destroy]

    def index
        @systems = System.all
    end

    def show
    end

    def new
        @system = System.new
    end

    def edit
        
    end

    def create
        @system = System.new(system_params)
        @system.save
        redirect_to systems_path
    end

    def update
        @system.update(system_params)
        redirect_to system_path
    end

    def destroy
        @system.destroy
        redirect_to systems_path
    end

    private

    def set_system
        @system = System.find_by(params[:id])
    end

    def system_params
        params.require(:system).permit(:name, :star, :galaxy_id, :user_id)
    end
end