class BooksController < ApplicationController

  def new
    @book = Book.new
  end
  
    def index
    @book = Book.new
    @books = Book.all 
  end
  
  def create
    #データを受け取り新規登録するためのインスタンス作成
    book = Book.new(book_params)
    book.save
    redirect_to 'books/:id'
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  
  
   private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
