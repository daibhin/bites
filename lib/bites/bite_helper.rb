module BiteHelper
  def text_bite(identifier, options)
    bite = Bite.find_by(identifier: identifier)
    return bite_form(bite) if @bite_authentication
    return Bite.create(identifier: identifier, text: options.default).text if bite.nil?
    return bite.text unless bite.text.blank?
    return options[:default] if options.present?
  end

  private def bite_form(bite)
    render(
      inline: "<%= form_for bite do |f| %><%= f.text_area :text %><%= f.submit 'Update' %><% end %>",
      locals: { bite: bite }
    )
  end

end
