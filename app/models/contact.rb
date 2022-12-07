class Contact < ApplicationRecord
    enum type_name: [ :prospect, :client]
    enum etat: [ :nothing, :to_contact, :negotiation, :wait_command, :completed]
end
