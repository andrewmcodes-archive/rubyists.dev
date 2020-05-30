# == Schema Information
#
# Table name: badges
#
#  id              :bigint           not null, primary key
#  asset_url       :string
#  description     :string
#  source_url      :string
#  title           :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :bigint
#
# Indexes
#
#  index_badges_on_organization_id  (organization_id)
#
require "test_helper"

class BadgeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
