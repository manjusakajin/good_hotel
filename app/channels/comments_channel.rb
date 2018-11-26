class CommentsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "comments_#{params['hotel_id']}_channel"
  end
end
