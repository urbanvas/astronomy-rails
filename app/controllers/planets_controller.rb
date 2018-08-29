class PlanetsController < ApplicationController
    before_action :set_planet, only: [:show, :edit, :update, :destroy]

    def most_recent
        @planet = Planet.most_recent
    end

    def index
        if params[:user_id] && User.exists?(params[:user_id])
            @planets = User.find(params[:user_id]).planets
        else
            @planets = Planet.search(params[:search])
        end
    end

    def show
    end

    def new
        @planet = Planet.new(user_id: params[:user_id])
    end

    def edit
    end

    def create
        @planet = Planet.new(planet_params)
        if @planet.valid?
            @planet.save
            redirect_to planets_path
        else
            render :new
        end
    end

    def update
        if @planet.update(planet_params)
            redirect_to planet_path
        else
            render :edit
        end
    end

    def destroy
        @planet.destroy
        redirect_to planets_path
    end

    private

    def set_planet
        @planet = Planet.find(params[:id])
    end

    def planet_params
        params.require(:planet).permit(:name, :size, :life, :system_id, :galaxy_id, :user_id, :search)
    end
end