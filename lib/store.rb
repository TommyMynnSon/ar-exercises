class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }

  validates :annual_revenue, numericality: { only_integer: true }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }

  validate :must_carry_apparel_of_at_least_one_gender

  def must_carry_apparel_of_at_least_one_gender
    if !mens_apparel && !womens_apparel
      errors.add(name, 'must carry apparel of at least one gender.')
    end
  end
end
