class AnimalsController < ApplicationController
  def index
    @search = Animal.ransack(params[:q])
    @search.sorts = 'name asc' if @search.sorts.empty?
    @animals = @search.result.paginate(page: params[:page], per_page: 10)
  end
end
