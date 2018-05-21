class User < ApplicationRecord
  rolify
  has_many :favorite
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
  def my_logger
    @@my_logger ||= Logger.new("#{Rails.root}/log/my.log")
  end

  def before_create
     my_logger.info("Creating user with name #{self.name}")
  end
=======

>>>>>>> 4a1e0d37a451c24b3a9fa61196d49334f9f8e03e
end
