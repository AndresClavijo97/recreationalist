class User < ApplicationRecord
  after_initialize :set_default_role, :if => :new_record?
  
  enum role: [:user, :vip, :admin]
  has_one_attached :avatar

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
