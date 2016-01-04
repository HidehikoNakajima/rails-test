class ChangeDaytimeToMessages < ActiveRecord::Migration
  def change
    change_column :messages, :daytime, :TimeWithZone
  end
end
