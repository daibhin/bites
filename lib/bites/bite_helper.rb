module BiteHelper
  def text_bite(identifier, options)
    Rails.logger.warn(identifier)
    Rails.logger.warn(options)
    "hello world"
    bite = Bite.find_by(identifier: identifier)
    return Bite.create(identifier: identifier, text: options.default).text if bite.nil?
    return bite.text unless bite.text.blank?
    return options[:default] if options.present?
  end
end
