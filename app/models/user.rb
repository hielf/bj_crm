# == Schema Information
#
# Table name: users
#
#  id                 :integer(4)      not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  salt               :string(255)
#  admin              :boolean(1)      default(FALSE)
#

class User < ActiveRecord::Base
  attr_accessor   :password
  attr_accessible :name, :email, :password, :usercode, :password_confirmation, :userposition_ids,
                  :usertype, :user_ids
  
  has_many :userpositionrels, :dependent => :destroy, 
                              :foreign_key => "userid"
  has_many :userpositions, :through => :userpositionrels, 
                           :source => :position

  has_many :usrrels,  :dependent => :destroy, :foreign_key => "mgr"
  has_many :users, :through => :usrrels, :source => :mgr
  
  # has_many :reverse_usrrels,  :dependent => :destroy, 
  #                             :foreign_key => "usr",
  #                             :class_name => "Usrrel"
  # has_many :upusr,            :through => :reverse_usrrels, 
  #                             :source => :usr

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name,  :presence   => true,
                    :length     => { :maximum => 20 }
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 5..20 }
                       
  before_save :encrypt_password
  
  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end
  
  def position!(position)
    userpositionrels.create!(:positionid => position.id )
  end
  
  class << self
    def authenticate(usercode, submmited_password)
      user = User.find_by_usercode(usercode)
      (user && user.has_password?(submmited_password)) ? user : nil
      # 与上面相同
      # return nil  if user.nil?
      # return user if user.has_password?(submmited_password)
    end
    
    def authenticate_with_salt(id, cookie_salt)
      user = find_by_id(id)
      (user && user.salt == cookie_salt) ? user : nil
    end
  end

  
  #encrypted password method
  private 
    def encrypt_password
      self.salt = make_salt if new_record?
      self.encrypted_password = encrypt(password)
    end
    
    def encrypt(string)
      secure_hash("#{salt}--#{string}") 
    end
    
    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end
    
    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
end

