module ApplicationHelper
  def nav_link(link_text, link_path, *method)
    class_name = current_page?(link_path) ? 'nav-item active' : 'nav-item'

      content_tag(:li, :class => class_name) do
        link_to link_text, link_path, class: 'nav-link', method: method
      end


  end

  def nav_link_method(link_text, link_path, method)
    class_name = current_page?(link_path) ? 'nav-item active' : 'nav-item'
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path, class: 'nav-link', method: "delete"
    end
  end

  def gravatar_for(user, options = {size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)

    size = options[:size]

    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"

    image_tag(gravatar_url, alt: user.username, class: "img-circle")

  end
end
