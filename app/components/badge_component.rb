class BadgeComponent < ApplicationComponent
  def initialize(badge:)
    @badge = badge
  end

  private

  attr_reader :badge

  def title
    badge.organization ? "#{badge.organization.name} - #{badge.title}" : badge.title
  end
end
