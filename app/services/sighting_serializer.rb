class SightingsController < ApplicationController

    def initialize(sighting_object)
        @sighting = sighting_object
      end
       
end

def to_serialized_json
    @sighting.to_json(:include => {
      :bird => {:only => [:name, :species]},
      :location => {:only => [:latitude, :longitude]}
    }, :except => [:updated_at])
  end

    # def index
    #   sightings = Sighting.all
    #   render json: sightings.to_json(:include => {
    #     :bird => {:only => [:name, :species]},
    #     :location => {:only => [:latitude, :longitude]}
    #   }, :except => [:updated_at])
    # end
   
    # def show
    #   sighting = Sighting.find_by(id: params[:id])
    #   render json: sighting.to_json(:include => {
    #     :bird => {:only => [:name, :species]},
    #     :location => {:only => [:latitude, :longitude]}
    #   }, :except => [:updated_at])
    # end
  end