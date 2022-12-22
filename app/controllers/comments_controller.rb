# frozen_string_literal: true

class CommentsController < InheritedResources::Base
  private

  def comment_params
    params.require(:comment).permit(:description, :user_id, :ticket_id)
  end
end
