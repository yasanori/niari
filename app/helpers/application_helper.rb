module ApplicationHelper
  def new_message_badga(room)
    receive_user = Message.where(room_id: room).where(receive_user_id: current_user.id).count
    receive_user_checked_message = Message.where(room_id: room).where(receive_user_id_checked_message: current_user.id).count
    message_count = receive_user - receive_user_checked_message
    if 0 == message_count
    else
      content_tag(:div, message_count, class: 'new-message-badge')
    end
  end
end
