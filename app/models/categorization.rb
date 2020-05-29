# == Schema Information
#
# Table name: categorizations
#
#  id                 :bigint           not null, primary key
#  categorizable_type :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  categorizable_id   :bigint           not null
#  category_id        :bigint           not null
#
# Indexes
#
#  categorizationable_id_type_idx               (categorizable_id,categorizable_type)
#  index_categorizations_on_categorizable_id    (categorizable_id)
#  index_categorizations_on_categorizable_type  (categorizable_type)
#  index_categorizations_on_category_id         (category_id)
#
class Categorization < ApplicationRecord
  # extends ...................................................................

  # includes ..................................................................

  # relationships .............................................................
  belongs_to :category
  belongs_to :categorizable, polymorphic: true

  # validations ...............................................................
  validates :category, presence: true
  validates :categorizable_type, presence: true
  validates :categorizable_id, presence: true

  # callbacks .................................................................

  # scopes ....................................................................

  # additional config (i.e. accepts_nested_attribute_for etc...) ..............

  # class methods .............................................................

  # public instance methods ...................................................

  # protected instance methods ................................................

  # private instance methods ..................................................
end
