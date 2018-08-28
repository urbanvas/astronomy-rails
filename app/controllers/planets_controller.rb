class PlanetsController < ApplicationController
    before_action :set_planet, only: [:show, :edit, :update, :destroy]

    def index
        @planets = Planet.all
    end

    def show
    end

    def new
        @planet = Planet.new
    end

    def edit
    end

    def create
        @planet = Planet.new(planet_params)
        @planet.save
        redirect_to planets_path
    end

    def update
        @planet.update(planet_params)
        redirect_to planet_path
    end

    def destroy
        @planet.destroy
        redirect_to planets_path
    end

    private

    def set_planet
        @planet = Planet.find_by(params[:id])
    end

    def planet_params
        params.require(:planet).permit(:name, :size, :life, :system_id, :galaxy_id, :user_id)
    end
end