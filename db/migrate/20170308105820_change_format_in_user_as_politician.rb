class ChangeFormatInUserAsPolitician < ActiveRecord::Migration[5.0]
  def change
    change_column :user_as_politicians, :bio, :text
  end
end
