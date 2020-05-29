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
class Organization < ApplicationRecord
  # extends ...................................................................

  # includes ..................................................................

  # relationships .............................................................
  has_many :badges

  # validations ...............................................................
  validates :name, length: {in: 1..40}, presence: true
  validates :company, presence: true
  validates :pricing_strategy, presence: true

  # callbacks .................................................................

  # scopes ....................................................................

  # additional config (i.e. accepts_nested_attribute_for etc...) ..............
  enum pricing_strategy: {free: 0, hybrid: 1, paid: 2}

  # class methods .............................................................

  # public instance methods ...................................................

  # protected instance methods ................................................

  # private instance methods ..................................................
end
