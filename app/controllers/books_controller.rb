class BooksController < ApplicationController
    
    def index
        @books = Book.paginate(page: params[:page])
    end
    
    def show
        @book = Book.find(params[:id])
    end

    def new
        @book = Book.new
    end
    
    def create
        @book = Book.new(book_params)
        if @book.save
            flash[:success] = "Complete to regist a book"
            redirect_to @book
        else
            render 'new'
        end
    end
    
    def edit
        @book = Book.find(params[:id])
    end
    
    def update
        @book = Book.find(params[:id])
        if @book.update_attributes(book_params)
            flash[:success] = "information updated"
            redirect_to @book
        else
            render 'edit'
        end
    end
    
    def destroy
        Book.find(params[:id]).destroy
        flash[:success] = "Book deleted"
        redirect_to books_url
    end
    
    private
    
    def book_params
        params.require(:book).permit(:title, :author, :number)
    end
end
