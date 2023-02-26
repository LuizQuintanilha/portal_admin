class Aluno < ApplicationRecord
  validates :nome, presence: true
  validates :sobrenome, presence: true
  validates :cpf, presence: true, uniqueness: true, length: {maximum: 13}
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
  validates :telefone, presence: true, format: { with: /\A\(\d{2}\)\s*\d{4,5}\-\d{4}\z/, message: "deve estar no formato (99) 99999-9999" }
  validates :cep, presence: true, format: { with: /\A\d{5}\-\d{3}\z/, message: "deve estar no formato 99999-999"}
  validates :endereco, presence: true
end
