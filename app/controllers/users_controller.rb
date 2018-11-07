class UsersController < ApplicationController
    # GET /users
    def index
        @users = User.all
        json_response(@users)
    end

    # POST /users
    def create 
        pub_key = params['pub_key']
        url = params['url']
        name = params['name']

        @user = User.new(pub_key: pub_key, url: url, name: name)
        @user.save
    end

    # GET /users/id
    def show 
        @user = User.find(params[:id])
        json_response(@user)
    end
end
