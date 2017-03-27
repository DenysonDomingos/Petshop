class AnimalsController < ApplicationController

  def index
    @search = Animal.search(params[:q])
    @animals = @search.result.paginate(:page => params[:page], :per_page => 10)
  end
end
