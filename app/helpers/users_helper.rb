module UsersHelper

  #与えられたユーザーのGravator(アバターとほぼ同義)を返す。メールアドレスに対応。そのメルアドはMD５によって暗号化され、汎用できる。
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt:user.name, class:"gravatar") 
  end
end
