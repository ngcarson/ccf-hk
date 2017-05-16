class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  validates :surname, presence: true, length: { maximum: 20 }, format: { with:/\A[a-zA-Z_ ]+\Z/, message: ': Only letters are allowed' }

  def self.human_attribute_name(attr, options = {})
  	attr == :surname ? 'Surname' : super
  end

  validates :first_name, presence: true, length: { maximum: 20 }, format: { with:/\A[a-zA-Z_ ]+\Z/, message: ': Only letters are allowed' }
  
	def self.human_attribute_name(attr, options = {})
  	attr == :first_name ? 'First Name' : super
  end

  validates :middle_name, presence: true, length: { maximum: 20 }, format: { with:/\A[a-zA-Z_ ]+\Z/, message: ': Only letters are allowed' }

  def self.human_attribute_name(attr, options = {})
  	attr == :middle_name ? 'Middle Name' : super
  end
end
