class BookmarksController < ApplicationController
  def show
    @bookmarks = Bookmark.all
  end

  def new
  end

  def edit
  end
end
