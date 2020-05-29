# == Schema Information
#
# Table name: categories
#
#  id                    :bigint           not null, primary key
#  categorizations_count :integer          default(0), not null
#  name                  :string           not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
# Indexes
#
#  index_categories_on_name  (name)
#
class Category < ApplicationRecord
  # extends ...................................................................

  # includes ..................................................................

  # relationships .............................................................
  has_many :categorizations, dependent: :destroy, class_name: "Categorization", as: :categorizable

  # validations ...............................................................
  validates :name, length: {in: 1..40}, presence: true
  validates :categorizations_count, numericality: true

  # callbacks .................................................................

  # scopes ....................................................................

  # additional config (i.e. accepts_nested_attribute_for etc...) ..............

  # class methods .............................................................

  # public instance methods ...................................................

  # protected instance methods ................................................

  # private instance methods ..................................................
end
