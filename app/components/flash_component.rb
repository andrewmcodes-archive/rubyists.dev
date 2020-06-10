class FlashComponent < ApplicationComponent
  def initialize(flash: nil)
    @flash = flash
  end

  private

  attr_reader :flash

  def class_for(flash_type)
    {
      success: "alert-success",
      error: "alert-danger",
      alert: "alert-warning",
      notice: "alert-info"
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def render?
    flash
  end
end
