class GalaxiesController < ApplicationController
    before_action :set_galaxy, only: [:show, :edit, :update, :destroy]

    def index
        @galaxies = Galaxy.all
    end

    def show
    end

    def new
        @galaxy = Galaxy.new
    end

    def edit
        
    end

    def create
        @galaxy = Galaxy.new(galaxy_params)
        @galaxy.save
        redirect_to galaxies_path
    end

    def update
        @galaxy.update(galaxy_params)
        redirect_to galaxy_path
    end

    def destroy
        @galaxy.destroy
        redirect_to galaxies_path
    end

    private

    def set_galaxy
        @galaxy = Galaxy.find_by(params[:id])
    end

    def galaxy_params
        params.require(:galaxy).permit(:name, :user_id)
    end
end