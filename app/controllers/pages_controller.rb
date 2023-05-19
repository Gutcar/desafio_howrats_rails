class PagesController < ApplicationController
  def index
  end

  def search
    @search_results = []

    if params[:query].present? && params[:field].present?
      case params[:field]
      when 'name'
        @search_results = Character.where("name LIKE ?", "%#{params[:query]}%")
      when 'location'
        @search_results = Character.where("location LIKE ?", "%#{params[:query]}%")
      when 'house'
        @search_results = Character.where("house LIKE ?", "%#{params[:query]}%")
      end
    end
  end

  def new
    @character = Character.new
  end
  
  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to pages_index_path
    else
      render :new
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :location, :house)
  end
end
