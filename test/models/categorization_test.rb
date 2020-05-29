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
require 'test_helper'

class CategorizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
