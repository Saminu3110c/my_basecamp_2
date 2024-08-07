class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :projects

  def set_admin
    update(admin: true)
  end

  def remove_admin
    update(admin: false)
  end
end
