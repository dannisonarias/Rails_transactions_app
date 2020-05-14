class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  has_many :groups
  has_many :transactions, dependent: :destroy
  has_one_attached :image
  before_create :set_default_avatar
  # rubocop:disable  Layout/LineLength
  def set_default_avatar
    return if image.attached?

    image.attach(io: File.open('app/assets/images/category-icons/noimage.png'), filename: 'noimage.png', content_type: 'image/png')
  end
  # rubocop:enable  Layout/LineLength
end
