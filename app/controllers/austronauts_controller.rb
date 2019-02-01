class AstronautsController < ApplicationController
  def index
    @astronaut = Astronauts.all
  end

end
