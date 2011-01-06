module JabeHelper
  def public_entry_path(entry)
    "/#{entry.published_at.in_time_zone.to_s(:url_part)}/#{entry.to_param}"
  end

  def public_entry_url(entry)
    "#{SETTINGS.site_url}#{public_entry_path(entry)}"
  end

  def default_gravatar_url
    "#{request.protocol}#{request.host_with_port}/images/gravatar.gif"
  end

  def page_title(title)
    @page_title = title
  end
end
