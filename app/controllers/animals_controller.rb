class AnimalsController < ApplicationController

  def index
    @search = Animal.search(params[:q])
    @animals = @search.result
  end
end
