class Transaction < ApplicationRecord
  belongs_to :contact
  belongs_to :product

  enum status: { negociation: 'Négociation en cours', wait_command: 'Commande en cours', completed: 'Terminé' }

  validates :date_livraison, presence: true
  validates :date_livraison, comparison: { greater_than: Date.today-1.day }
  
  def start_time
    date_livraison 
  end
end
