module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:div, msg, :class => 'message error') }.join
    html = <<-HTML
      <div class="flash">#{messages}</div>
    HTML

    html.html_safe
  end
end