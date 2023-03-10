class User < ApplicationRecord

           :recoverable, :rememberable, :validatable
  
    def name
      return 'Anonymous' unless first_name || last_name
      
      "#{first_name} #{last_name}"
    end
  end