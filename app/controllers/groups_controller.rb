class GroupsController < ApplicationController
    # GET /groups
    def index
        @groups = Group.all
        json_response(@groups)
    end
end
