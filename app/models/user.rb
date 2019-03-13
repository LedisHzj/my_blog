class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend Enumerize
  Roles = {admin: 1, user: 2}
  enumerize :role, in: Roles, default: :user
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :role

  has_many :articles

  def role? role
    self.role == role.to_s && Roles.keys.index(role)
  end
end
