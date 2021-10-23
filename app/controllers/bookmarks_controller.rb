class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end
  

  private

  # def set_bookmark
  #   @bookmarks.list = @list
  # end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end


end
