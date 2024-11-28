class Team < ApplicationRecord
  has_one :wallet, as: :entity, dependent: :destroy

  before_validation :strip_whitespace
  
  validates :name,
    length: { maximum: 100 },
    presence: true,
    uniqueness: { case_sensitive: false }

  private
    def strip_whitespace
      if name.present?
        self.name = name.strip
      end
    end
end
