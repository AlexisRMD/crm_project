class Contact < ApplicationRecord
    enum type_name: { prospect: 'Prospect', client: 'Client' }
    enum status: { nothing: 'Rien', to_contact: 'A contacté', have_transactions: 'Transaction(s) en cours' }
end
