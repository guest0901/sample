class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
      end

  def create
    Message.create(title: params[:message][:title], body: params[:message][:body])
    redirect_to messages_path
  end

  def show
    @message = Message.find_by(id: params[:id])
  end

  def edit
    @message = Message.find_by(id: params[:id])
  end

  def destroy
  end
  
  def update
    message = Message.find_by(id: params[:id])
    message.update(title: params[:message][:title], body: params[:message][:body])
    redirect_to messages_path
  end
end