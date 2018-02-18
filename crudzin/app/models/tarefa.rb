class Tarefa < ActiveRecord::Base
  validates_presence_of :nome, message: 'deve ser preenchido'
  validates_length_of :nome, maximum: 100, message: 'deve ter até 100 caracteres'
  validates_presence_of :descricao, message: 'deve ser preenchido'
  validates_length_of :descricao, maximum: 255, message: 'deve ter até 255 caracteres'
  validates_presence_of :status, message: 'deve ser preenchido'

  validates :nome, presence: {message: 'deve ser preenchido'},
    length: {maximum: 100, message: 'dever ter até 100 caracteres'}
  validates :descricao, presence: {message: 'deve ser preenchido'},
    length: {maximum: 255, message: 'dever ter até 100 caracteres'}
  validates :status, presence: {message: 'deve ser preenchido'}
end
