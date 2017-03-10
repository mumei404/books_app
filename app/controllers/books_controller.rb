class BooksController < ApplicationController
    
    def create
        @book = Book.new(book_params)
        if @book.save
            flash[:success] = "Complete to regist a book"
            redirect_to @book
        else
            render 'new'
        end
    end
    
    def show
        @book = Book.find(params[:id])
    end

    def new
        @book = Book.new
    end
    
    private
    
    def book_params
        params.require(:book).permit(:title, :author)
    end
end
