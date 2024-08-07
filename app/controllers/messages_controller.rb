class MessagesController < ApplicationController
    before_action :set_discussion_thread
    before_action :authenticate_user!

    def new
        @message = @discussion_thread.messages.new
    end

    def create
        @message = @discussion_thread.messages.new(message_params)
        @message.user = current_user
        if @message.save
        redirect_to project_discussion_thread_path(@discussion_thread.project, @discussion_thread), notice: 'Message was successfully created.'
        else
        render :new
        end
    end

    def edit
        @message = @discussion_thread.messages.find(params[:id])
    end

    def update
        @message = @discussion_thread.messages.find(params[:id])
        if @message.update(message_params)
        redirect_to project_discussion_thread_path(@discussion_thread.project, @discussion_thread), notice: 'Message was successfully updated.'
        else
        render :edit
        end
    end

    def destroy
        @message = @discussion_thread.messages.find(params[:id])
        @message.destroy
        redirect_to project_discussion_thread_path(@discussion_thread.project, @discussion_thread), notice: 'Message was successfully destroyed.'
    end

    private

    def set_discussion_thread
        @discussion_thread = DiscussionThread.find(params[:discussion_thread_id])
    end

    def message_params
        params.require(:message).permit(:content)
    end
end
