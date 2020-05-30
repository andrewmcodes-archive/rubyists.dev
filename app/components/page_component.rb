class PageComponent < ApplicationComponent
  with_content_areas :title, :subtitle, :body

  def initialize(body_width: "lg:w-1/2 md:w-2/3")
    @body_width = body_width
  end

  private

  attr_reader :body_width
end
