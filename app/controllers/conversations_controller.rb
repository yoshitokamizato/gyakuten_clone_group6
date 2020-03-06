class ConversationsController < ApplicationController
  def index
    @movies = Conversation.all
  end
end
