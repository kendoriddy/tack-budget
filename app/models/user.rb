class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable

  has_many :categories, dependent: :destroy
  has_many :transactions, dependent: :destroy, foreign_key: 'author_id'
  has_one_attached :avatar

  validates :name, presence: true

  ROLES = %i[admin default].freeze

  def is?(requested_role)
    role == requested_role.to_s
  end

  private

  def after_confirmation
    WelcomeMailer.send_greetings_notification(self)
      .deliver_now
  end
end
