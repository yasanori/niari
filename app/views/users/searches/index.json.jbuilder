json.array! @users do |user|
  json.id user.id
  json.name user.name
  json.image user.image
  json.prefecture user.prefecture
  json.profile user.profile
  json.main_photo user.main_photo
  json.camera_id user.camera_id
  json.user_sign_in current_user
end
