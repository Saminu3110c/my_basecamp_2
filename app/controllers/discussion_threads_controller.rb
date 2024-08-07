class DiscussionThreadsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_project
    before_action :set_discussion_thread, only: [:show, :edit, :update, :destroy]
  
    def show
      @messages = @discussion_thread.messages
    end
  
    def new
      @discussion_thread = @project.discussion_threads.new
    end
  
    def create
      @discussion_thread = @project.discussion_threads.new(discussion_thread_params)
      @discussion_thread.user = current_user
      if @discussion_thread.save
        redirect_to project_path(@project), notice: 'Thread was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @discussion_thread.update(discussion_thread_params)
        redirect_to project_path(@project), notice: 'Thread was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @discussion_thread.destroy
      redirect_to project_path(@project), notice: 'Thread was successfully destroyed.'
    end
  
    private
  
    def set_project
      @project = Project.find(params[:project_id])
    end
  
    def set_discussion_thread
      # @discussion_thread = @project.discussion_threads.find(params[:id])
      @discussion_thread = DiscussionThread.find(params[:id])
    end
  
    def discussion_thread_params
      params.require(:discussion_thread).permit(:title, :project_id, :user_id)
    end
  end
  