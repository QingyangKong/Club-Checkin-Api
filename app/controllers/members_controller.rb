class MembersController < ApplicationController
    # GET /members
    def index
        @members = Member.all
        json_response(@members)
    end

    # POST /members
    def create
        group_member_id = params['group_member_id']
        user_pk = params['user_pk']
        
        @member = Member.new(group_member_id: group_member_id, user_pk: user_pk)
        @member.save
    end

    # GET /members/:id
    def show
        @member = Member.find(params[:id])
        json_response(@member)
    end
end
