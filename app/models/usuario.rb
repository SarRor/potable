class Usuario < ApplicationRecord
  has_many :pagos, dependent: :destroy

  validates :nombre, presence: true, length: { minimum: 7, maximum: 80 }
  validates :calle, presence: true, length: { minimum: 6, maximum: 40 }
  validates :numero, presence: true, length: { minimum: 1, maximum: 10 }
  validates :telefono, length: { minimum: 7, maximum: 25 }, allow_blank: true
  validates :email, length: { minimum: 10, maximum: 50 }, allow_blank: true
end
