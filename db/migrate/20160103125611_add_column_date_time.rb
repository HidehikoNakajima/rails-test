class AddColumnDateTime < ActiveRecord::Migration
  def change
    add_column :messages, :daytime, :DateTime
  end
end
