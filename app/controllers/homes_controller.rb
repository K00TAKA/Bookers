class HomesController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def new
    @list = List.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to "/books/#{@book.id}"
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to books_path(@book)
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books'
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
