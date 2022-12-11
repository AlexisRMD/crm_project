class Transaction < ApplicationRecord
  belongs_to :contact
  belongs_to :product

  enum status: { negociation: 'Négociation en cours', wait_command: 'Commande en cours', completed: 'Terminé' }
end
