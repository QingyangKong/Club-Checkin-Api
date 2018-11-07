class GroupCardsController < ApplicationController
    # get /group_cards
    def index
        @group_cards = GroupCard.all
        json_response(@card_supporters)
    end
end
