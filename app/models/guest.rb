class Guest < ApplicationRecord
  has_many :order_tables, as: :target
  has_one :review, as: :target
  has_many :bills, as: :target

  before_save :downcase_email

  validates :name, presence: true, length: {maximum: 20}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
    format: {with: VALID_EMAIL_REGEX}

  validates :phone, presence: true, numericality: true,
    length: {minimum: Settings.phone_number.min_length, 
      maximum: Settings.phone_number.max_length}

  accepts_nested_attributes_for :review

  private
  def downcase_email
    self.email = email.downcase
  end
end
