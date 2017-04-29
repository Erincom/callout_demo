class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  NEIGHBOURHOODS = ["Centre", "LLevant", "Sud", "Ponent", "Nord-oest", "Nord-est"].sort
  CITIES = ["Terrassa"]
end
