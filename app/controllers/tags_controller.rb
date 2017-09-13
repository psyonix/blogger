class TagsController < ApplicationController
    include TagsHelper
    def show
        @tag = Tag.find(params[:id])
    end
    def index
        @tag = Tag.all
    end
    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
        
        flash.notice = "Tag '#{@tag}' deleted!"
        
        redirect_to tags_path(@tags)
    end
end
