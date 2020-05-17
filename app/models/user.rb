class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates_presence_of :name
         def first_name
           self.name.split.first
         end
         def last_name
           self.split.last
         end

  has_many :wine_lists_items
  has_many :wines, through: :wine_lists_items
end
