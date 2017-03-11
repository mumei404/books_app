class PublishersController < ApplicationController
    
    def index
        @publishers = Publisher.paginate(page: params[:page])
    end
    
    def show
        @publisher = Publisher.find(params[:id])
    end
    
    def new
        @publisher = Publisher.new
    end
    
    def create
        @publisher = Publisher.new(publisher_params)
        if @publisher.save
            flash[:success] = "Complete to regist a publisher"
            redirect_to @publisher
        else
            render 'new'
        end
    end
    
    def edit
        @publisher = Publisher.find(params[:id])
    end
    
    def update
        @publisher = Publisher.find(params[:id])
        if @publisher.update_attributes(publisher_params)
            flash[:success] = "information updated"
            redirect_to @publisher
        else
            render 'edit'
        end
    end
    
    def destroy
        Publisher.find(params[:id]).destroy
        flash[:success] = "Publisher deleted"
        redirect_to publishers_url
    end
    
    private
    
    def publisher_params
        params.require(:publisher).permit(:name)
    end
end
