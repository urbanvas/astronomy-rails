class SystemsController < ApplicationController
    before_action :set_system, only: [:show, :edit, :update, :destroy]

    def index
        if params[:user_id] && User.exists?(params[:user_id])
            @systems = User.find(params[:user_id]).systems
        else
            @systems = System.search(params[:search])
        end
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
        if @system.valid?
            @system.save
            redirect_to systems_path
        else
            render :new
        end
    end

    def update
        if @system.update(system_params)
            redirect_to system_path
        else
            render :edit
        end
    end

    def destroy
        @system.destroy
        redirect_to systems_path
    end

    private

    def set_system
        @system = System.find(params[:id])
    end

    def system_params
        params.require(:system).permit(:name, :star, :galaxy_id, :user_id, :search)
    end
end