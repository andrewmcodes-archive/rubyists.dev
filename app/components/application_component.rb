class ApplicationComponent < ViewComponent::Base
  private

  def find_or_fallback(supplied, valid, fallback)
    if valid.include?(supplied)
      supplied
    else
      raise ArgumentError if Rails.env.development?
      fallback
    end
  end
end
