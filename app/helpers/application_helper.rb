module ApplicationHelper
  def my_name
    "Lei Chen :)"
  end

  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-grooup has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end
end
