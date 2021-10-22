module AvatarHelper
  def avatar(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    image_tag "http://gravatar.com/avatar/#{gravatar_id}.png"
  end
end
