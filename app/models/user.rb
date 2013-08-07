# == Schema Information
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#  encrypted_password :string(255)
#  salt               :string(255)
#  admin              :boolean         default(FALSE)
#  usercode           :string(255)
#  ismgr              :boolean
#  usertype           :integer
#

class User < ActiveRecord::Base
  attr_accessor   :password
  attr_accessible :name, :email, :password, :usercode, :password_confirmation, :userposition_ids,
                  :usertype, :underling_ids, :usrrels_attributes
  
  has_many :userpositionrels, :dependent => :destroy, 
                              :foreign_key => "userid"
  has_many :userpositions, :through => :userpositionrels, 
                           :source => :position

  has_many :usrrels, :dependent => :destroy, :foreign_key => "mgr"
  has_many :underlings, :through => :usrrels, :source => :superior
  # has_one  :superior, :through => :usrrels, :source => :underlings
  
  has_many :custrels
  has_many :custs, :through => :custrels
  has_many :notices
  
  accepts_nested_attributes_for :usrrels
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name,  :presence   => true,
                    :length     => { :maximum => 20 }
  validates :usercode, :presence   => true,
                       :uniqueness => true                 
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 5..20 }
  
  scope :type1_user, where(:usertype => Dict.find_by_dict_type_and_code('userType',1))
  scope :type2_user, where(:usertype => Dict.find_by_dict_type_and_code('userType',2))
  scope :type3_user, where(:usertype => Dict.find_by_dict_type_and_code('userType',3))
  
  before_save :encrypt_password
  
  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end
  
  def position!(position)
    userpositionrels.create!(:positionid => position.id )
  end
  
  def underlingself!(user)
    usrrels.create!(:mgr => user.id, :usr => user.id )
  end
  
  def custrel!(cust)
    custrels.create!(:cust_id => cust.id)
  end
  
  def custunrel!(cust)
    custrels.find_by_cust_id(cust).destroy
  end
  
  def self.owncusts(user)
    if user && !user.underlings.blank?
      user.underlings.each do |t|
        @custs = t.custs
      end
    end
    @custs
  end
  
  def self.manager?(user)
    # if user
      (user && Dict.find_by_id(user.usertype).code == 3) ? true : false
    # else
      
    # end
  end
  
  def self.search(search, user)
    if search
      @custs = user.custs.limit(10).find(:all,:conditions => ['fullname LIKE ? ', "%#{search}%"])
    else
      @custs = nil
    end
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
      if password != nil
        self.encrypted_password = encrypt(password)
      end
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

