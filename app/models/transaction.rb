class Transaction < ApplicationRecord
  belongs_to :contact
  belongs_to :product

  enum status: { negociation: 'Négociation en cours', wait_command: 'Commande en cours', completed: 'Terminé' }

  validates :date_livraison, presence: true
  
  def start_time
    date_livraison 
  end
end
