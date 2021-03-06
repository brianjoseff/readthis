class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
  has_many :book_lists
  has_many :assets, as: :imageable, :dependent => :destroy
  
  accepts_nested_attributes_for :assets
  
end
