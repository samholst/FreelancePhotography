module ApplicationHelper
  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60, class: 'gravatar-image'
  end

  def gravatar_helper_large user, size
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: "#{size}", class: 'gravatar-image'
  end
end
