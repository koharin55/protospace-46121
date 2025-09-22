class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :prototypes
  has_many :comments, dependent: :destroy 

  # バリデーション追加
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true

end
