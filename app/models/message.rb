class Message < ActiveRecord::Base
    #名前は必須入力かつ20字以内
    validates :name , length: { maximum: 20} , presence: true
    validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 0}
    #内容は必須入力かつ2時以上30文字以下
    validates :body , length: { minimum: 2, maximum: 30 } , presence: true
end