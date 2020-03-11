json.array! @users do |user|
  json.id user.id
  json.name user.name
  json.image user.image
  json.camera_id user.camera_id
  json.user_sign_in current_user
end
