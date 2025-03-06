class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(list_params)
    @bookmark.save
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    #redirect_to lists_path, status: :see_other
  end
end

private

def bookmarks_params
  params.require(:list).permit(:comment)
end
