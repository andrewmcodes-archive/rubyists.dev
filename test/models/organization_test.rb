# == Schema Information
#
# Table name: organizations
#
#  id               :bigint           not null, primary key
#  company          :boolean          default(FALSE), not null
#  name             :string           not null
#  pricing_strategy :integer          default("free"), not null
#  url              :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
