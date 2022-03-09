class User < ApplicationRecord
    validates :user_name, presence:true, 
                            uniqueness:{case_sensitive: false} 
    VALId_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,
                        uniqueness:{case_sensitive: false},
                        format: {with: VALId_EMAIL_REGEX}

has_secure_password
end
