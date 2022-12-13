class Contact < ApplicationRecord
    enum type_name: { prospect: 'Prospect', client: 'Client' }
    enum status: { nothing: 'Rien', to_contact: 'A contacté', have_transactions: 'Transaction(s) en cours' }

    validates :name, presence: true
    validates :tel, presence: true
    validates :email, presence: true
end
