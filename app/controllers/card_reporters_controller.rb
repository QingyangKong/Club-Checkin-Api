class CardReportersController < ApplicationController
    # get /card_reporters
    def index
        @card_reporters = CardReporter.all
        json_response(@card_reporters)
    end

    # POST /card_reporters
    def create
        reporter_group_id = params['reporter_group_id']
        reporter_pk =  params['reporter_pk']
        @card_reporter = CardReporter.new(
            reporter_group_id: reporter_group_id, reporter_pk: reporter_pk)
        @card_reporter.save
    end

    # GET /card_reporters/:id
    def show
        @card_reporter = CardReporter.find(params[:id])
        json_response(@card_reporter)
    end
end
