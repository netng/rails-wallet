class User < ApplicationRecord
  has_one :wallet, as: :entity, dependent: :destroy

  before_save :downcase_email

  validates :name, length: { maximum: 100 }, presence: true
  validates :email,
    presence: true,
    format: { with: URI::MailTo::EMAIL_REGEXP },
    uniqueness: { case_sensitive: false }
  
  private
    def downcase_email
      if email.present?
        self.email = email.downcase
      end
    end
end
