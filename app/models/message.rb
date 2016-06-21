class Message < ActiveRecord::Base
    validates :fact , length: { maximum: 300 } , presence: true
    validates :awereness , length: { maximum: 300 } , presence: true
    validates :quote , length: { maximum: 300 } , presence: true
    validates :goal , length: { maximum: 300 } , presence: true
    
  def previous
    Message.where("id < ?", self.id).order("id DESC").first
  end
 
  def next
    Message.where("id > ?", self.id).order("id ASC").first
  end
end