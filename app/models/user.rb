class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #  :validatable
  
  has_many :authorizations
  has_many :statuses
  has_many :locations, through: :statuses
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable
         
  SOCIALS = {
    twitter: 'Twitter',
    foursquare: 'Foursquare'
  }

  def self.from_omniauth(auth, current_user)
    authorization = Authorization.where(:provider => auth.provider, :uid => auth.uid.to_s, 
                                        :token => auth.credentials.token, 
                                        :secret => auth.credentials.secret).first_or_initialize
#     authorization.profile_page = auth.info.urls.first.last unless authorization.persisted?

    if authorization.user.blank?
      user = current_user.nil? ? User.where('email = ?', auth['info']['email']).first : current_user
      if user.blank?
        user = User.new
#         user.skip_confirmation!
        user.password = Devise.friendly_token[0, 20]
        user.fetch_details(auth)
        user.save
      end
      authorization.user = user
      authorization.save
      
    end
    authorization.user
  end
  
  def fetch_details(auth)
    self.username = auth.info.name
    self.email = auth.info.email
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new session["devise.user_attributes"] do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end    
  end

	private

	def user_params 
 		params.require(:user).permit(:email, :password, :password_confirmation, :remember_me, :username)
	end
  
  validates_presence_of :username
  validates_uniqueness_of :username
end
