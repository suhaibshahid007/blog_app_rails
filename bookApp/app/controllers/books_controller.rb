class BooksController < ApplicationController
  def index
    @books = Book.all.python
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save(validate: false)
      redirect_to books_path, notice: 'Book Has been Added !!!'
    else
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to books_path, notice: 'Book Has been Updated !!!'
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, notice: 'Book Has been Deleted !!!'
  end

  private

  def book_params
    params.require(:book).permit(:title, :text)
  end
end
