class AnimalController < ApplicationController
    def index
    end
    
    def write
        new_post = Animalinfo.new
        new_post.title = params[:title]
        new_post.content = params[:content]
        new_post.save
        redirect_to "/info"
    end
    
    def info
        @every_post = Animalinfo.all
    end
   
   
    def destroy
        @one_post = Animalinfo.find(params[:id])
        @one_post.destroy
        
        redirect_to "/info"
    end
    
    
     def update_view
        @one_post = Animalinfo.find(params[:id])
     end
     
     
     def update
        @one_post = Animalinfo.find(params[:id])
        @one_post.title = params[:title]
        @one_post.content = params[:content]
        @one_post.save

        redirect_to '/info'
    end    
     
end
