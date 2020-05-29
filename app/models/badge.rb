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
class Badge < ApplicationRecord
  # extends ...................................................................

  # includes ..................................................................

  # relationships .............................................................
  belongs_to :organization
  has_many :categorizations, as: :categorizable

  # validations ...............................................................
  validates :title, presence: true
  validates :description, length: {maximum: 100}
  validates_uniqueness_of :asset_url, scope: :title

  # callbacks .................................................................

  # scopes ....................................................................

  # additional config (i.e. accepts_nested_attribute_for etc...) ..............

  # class methods .............................................................

  # public instance methods ...................................................

  # protected instance methods ................................................

  # private instance methods ..................................................
end
