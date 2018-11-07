class CardSupportersController < ApplicationController
    # get /card_supporters
    def index
        @card_supporters = CardSupporter.all
        json_response(@card_supporters)
    end

    # POST /card_reporters
    def create
        supporter_group_id = params['supporter_group_id']
        supporter_pk =  params['supporter_pk']
        @card_supporter = CardSupporter.new(
            supporter_group_id: supporter_group_id, supporter_pk: supporter_pk)
        @card_supporter.save
    end

    # GET /card_reporters/:id
    def show
        @card_supporter = CardSupporter.find(params[:id])
        json_response(@card_supporter)
    end
end
