module RoomsHelper

  def most_new_message_preview(room)
    message = room.messages.order(updated_at: :desc).limit(1)
    if message.present?
      tag.p message.text, class: "dm_list__content__link__box__message"
    else
      tag.p "[ まだメッセージはありません ]", class: "dm_list__content__link__box__message"
    end
  end

  # def opponent_user(room)
  #   entories = room.entries
  #   entries.each do |entry|
  #    name = entry.user.name unless current_user.id == entry.user_id
  #   end
  #   tag.p name, class: "dm_list__content__link__box__name"
  # end

end
