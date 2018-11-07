class CardSupportersController < ApplicationController
    # get /card_supporters
    def index
        @card_supporters = CardSupporter.all
        json_response(@card_supporters)
    end
end
