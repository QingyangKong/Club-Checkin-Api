class GroupCardsController < ApplicationController
    # GET /group_cards
    def index
        @group_cards = GroupCard.all
        json_response(@group_cards)
    end


    # POST /group_cards
    def create
        user_pk = params['user_pk']
        url =  params['url']
        message = params['message']
        group_card_id = params['group_card_id']
        check_in_time = params['check_in_time']
        report_group_id = params['report_group_id']
        support_group_id = params['support_group_id']

        @group_card = GroupCard.new(
            user_pk: user_pk, url: url, message: message, group_card_id: group_card_id, 
            check_in_time: check_in_time, report_group_id: report_group_id, support_group_id: support_group_id)

        @group_card.save
    end


    # GET /group_cards/:id
    def show
        @group_card = GroupCard.find(params[:id])
        json_response(@group_card)
    end

end
