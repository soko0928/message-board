class Message < ActiveRecord::Base
    #名前は必須入力かつ20字以内
    validates :name , length: { maximum: 20} , presence: true
    validates :age , length: { minimum: 2, maximum: 20} , numericality: 0:greater_than_or_equal_totrue
    #内容は必須入力かつ2時以上30文字以下
    validates :body , length: { minimum: 2, maximum: 30 } , presence: true
end