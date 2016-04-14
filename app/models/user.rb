class User < ActiveRecord::Base
belongs_to :booking
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :band_name, presence: true
  validates :contact_name , presence: true
  validates :phone_number , presence: true

  before_save :assign_user_role


  def assign_user_role
    self.is_admin = 0
  end
def admin?
  self.is_admin == 1
end
end
