class BooksController < ApplicationController
  def index
  	@books = Book.all
  end

  def show
  	@book = Book.find(params[:id])
  end

  def new
  end

  def edit
  end

  private
  def article_params
    params.require(:book).permit(:title, :author, :category)
  end
end
