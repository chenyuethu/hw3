class PostsController < ApplicationController

    def new
        @post = Post.new
        @place = Place.find_by({ "id" => @post["place_id"] })
        @post["place_id"] = @place["id"]
    end

    def create
        @post = Post.new
        @contact["first_name"] = params["contact"]["first_name"]
        @contact["last_name"] = params["contact"]["last_name"]
        @contact["email"] = params["contact"]["email"]
        @contact["phone_number"] = params["contact"]["phone_number"]
        @contact["company_id"] = params["contact"]["company_id"]
        @contact.save
        redirect_to "/companies/#{@contact["company_id"]}"
    end

end
