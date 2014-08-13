module ApplicationHelper
  def avatar_url(user, size=nil)
	  default_url = "#{root_url}images/logo.png"
	  gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
	  "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size.nil? ? 24 : size}"
  end
end
