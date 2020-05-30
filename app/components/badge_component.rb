class BadgeComponent < ApplicationComponent
  def initialize(badge:)
    @badge = badge
  end

  private

  attr_reader :badge

  def org_name
    badge.organization ? badge.organization.name : false
  end
end
