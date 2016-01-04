class Message < ActiveRecord::Base
    validates :name , presence:true
    validates :name , length:{maximum:20} , if: ->(u) { u.name.present? }
    validates :body , presence:true
    validates :body , length:{minimum:2,maximum:30} , if: ->(u) { u.body.present? }
    validates :age , presence:true
    validates :age , numericality:{greater_than_or_equal_to:0}, if: ->(u) { u.age.present? }
end
