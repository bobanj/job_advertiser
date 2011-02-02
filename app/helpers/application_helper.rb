module ApplicationHelper
  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end

  def title(page_title)
    content_for(:title) { h(page_title.to_s) }
  end

  def keywords(page_keywords)
    content_for(:keywords) { page_keywords } unless page_keywords.blank?
  end

  def description(page_description)
    content_for(:description) { page_description } unless page_description.blank?
  end
end
