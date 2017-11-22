module ApplicationHelper
  def facebook_image(user)
    avatar_url = user.facebook_picture_url || "http://placehold.it/30x30"
  end
end
