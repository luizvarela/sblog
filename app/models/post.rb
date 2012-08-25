class Post < ActiveRecord::Base

  
  
  has_many :comentarios, :order => 'created_at ASC', :dependent => :destroy 
  
  validates :titulo, :presence => true, :length => { :minimum => 10 }
  validates :conteudo, :presence => true
  
end
