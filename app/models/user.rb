class User < ActiveRecord::Base
    has_secure_password
    before_save { self.email = email.downcase }
  before_create :create_remember_token

   validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }


  validates_numericality_of :phone, :only_integer => true, presence:true,
    length: { minimum: 10 }

  validates :address,presence: true
  validates :state,presence: true
  validates :dist,presence: true
  validates :citytown,presence: true
  validates :mandal,presence: true
  validates :password, length: { minimum: 6 }
#  DateRegex = /(?<month>\d{1,2})\/(?<day>\d{1,2})\/(?<year>\d{4})/

# validates_format_of :birth, :with => DateRegex

    def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end
