class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :role_ids, :name, :email, :password, :password_confirmation, :remember_me, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

end
