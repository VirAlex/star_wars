class ConsultationsController < ApplicationController
  require 'json'
  require 'open-uri'
  require "awesome_print"

  def index
    Consultation.destroy_all
    url = "https://swapi.co/api/films"
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
    user['results'].each do |title|
       Consultation.create!(
            title:    title["title"],
            synopsys: title["opening_crawl"],
            datesortie: title["release_date"]
            )
    @films = Consultation.all
    end
  end

  def show
    @film = Consultation.find(params[:id])
  end
end
