class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
class  ApplicationRecord < ActiveRecord::Base
  validates :password,
  length:{minimum:8,maximum:32}
end 
class  ApplicationRecord < ActiveRecord::Base
  validates :password_confirmation,
  length:{minimum:8,maximum:32}
end 
class  ApplicationRecord < ActiveRecord::Base
  validates :encrypted_password,:password,:password_confirmation,
  length:{minimum:7},format:{with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{7,}/}
end 

class  ApplicationRecord < ActiveRecord::Base
  validates :name,
  length:{minimum:1,maximum:15}
end 
class  ApplicationRecord < ActiveRecord::Base
  validates:email,
 format:{with:/\A\S+@\S+\.\S+\z/}
end 