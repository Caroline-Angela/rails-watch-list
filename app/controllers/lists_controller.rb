class ListsController < ApplicationController
  def index
    @lists = List.all
  end

 # def show movie
  #   @list = List.find(params[:id])
  #   @movie = List.bookmarks.find(params[:id])
  # end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
  end
end

private

def list_params
  params.require(:list).permit(:name)
end
