class MembersController < ApplicationController
    # get /card_reporters
    def index
        @card_reporters = CardReporter.all
        json_response(@card_reporters)
    end
end
