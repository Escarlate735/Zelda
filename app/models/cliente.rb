class Cliente < ApplicationRecord
  has_many :pacotes, dependent: :destroy
  validates :Nome, presence: true
  validates :CPF, presence: true
  validates :Email, presence: true
  validates :Endereco, presence: true
  validates :Data_de_Nascimento, presence: true
end
