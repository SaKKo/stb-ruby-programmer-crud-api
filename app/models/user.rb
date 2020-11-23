class User < ApplicationRecord
  def as_api_json
    return {
      id: self.id,
      title: self.title,
      first_name: self.first_name,
      last_name: self.last_name
    }
  end
end
