class GroupsController < ApplicationController
    # GET /groups
    def index
        @groups = Group.all
        json_response(@groups)
    end

    # POST /groups
    def create
        name = params['name']
        contract_addr = params['contract_addr']
        admin_addr = params['admin_addr']
        total_erc = params['total_erc']
        group_member_id = params['group_member_id']
        group_card_id = params['group_card_id']
        started_time = params['started_time']

        @group = Group.new(
            name: name, contract_addr: contract_addr, admin_addr: admin_addr, 
            total_erc: total_erc, group_member_id: group_member_id, group_card_id: group_card_id,
            started_time: started_time)

        @group.save
    end

    # GET /groups/:id
    def show
        @group = Group.find(params[:id])
        json_response(@group)
    end
end
