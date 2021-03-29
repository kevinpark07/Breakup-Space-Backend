class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        if params[:profile_image] != ''
            image = Cloudinary::Uploader.upload(params[:profile_image])
            user = User.create(name: params[:name], email: params[:email], username: params[:username], password: params[:password], profile_image: image["url"])
        else
            user = User.create(name: params[:name], email: params[:email], username: params[:username], password: params[:password], profile_image: 'https://res.cloudinary.com/breakupspace/image/upload/v1616445053/Profile_lvecac.png')
        end
        
        if user.save
            render json: user
        else
            render json: {error: user.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        user = User.find(params[:id])

        if(params[:profile_image] === "")
            image = user.profile_image
            user.update(name: params[:name], email: params[:email], username: params[:username], password: params[:password], profile_image: image)
        else
            image = Cloudinary::Uploader.upload(params[:profile_image])
            user.update(name: params[:name], email: params[:email], username: params[:username], password: params[:password], profile_image: image["url"])
        end

        if user.save
            render json: user
        else
            render json: {error: user.errors.full_messages}, status: :not_acceptable
        end  
    end

    def destroy
        user = User.find(params[:id])
        user.destroy

        render json: user
    end

    private
    
    def user_params
        params.require(:user).permit(:name, :email, :username, :password, :profile_image)
    end
    
end
