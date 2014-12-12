module ApplicationHelper
  def my_name
    "Lei Chen :)"
  end

  def markdown(text)
    renderer = Redcarpet::Render::HTML.new
    extensions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    (redcarpet.render text).html_safe
  end

  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-grooup has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end

  def user_profile_image_url(user)
    if user && user.avatar?
      user.avatar.profile.url
    else
      "avatar_profile.jpg"
    end
  end
end
