module UsersHelper
  def only_host_and_path(url)
    return unless url.present?

    begin
      uri = URI.parse(url)
      uri.host + uri.path
    rescue URI::InvalidURIError
      url
    end
  end
end
