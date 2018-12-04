module Biteable
  extend ActiveSupport::Concern

  included do
    before_filter :authenticate
  end

  def authenticate
    if request.params[:edit_page]
      authenticate_or_request_with_http_basic('Administration') do |username, password|
        @bite_authentication = true
      end
    else
      @bite_authentication = false
    end
  end
end
