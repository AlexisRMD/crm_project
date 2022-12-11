class TransactionsController < InheritedResources::Base
  before_action :set_contacts_products, only: %i[ new create show edit update destroy ]
  before_action :set_transaction, only: %i[ show edit update destroy ]

  def index
    @transactions = Transaction.all

    @contact_names = {}
    @product_names = {}
    @transactions.each do |transaction|
      @contact_names[transaction.id] = Contact.find(transaction.contact_id).name
      @product_names[transaction.id] = Product.find(transaction.product_id).name
    end
  end

  def show
    @contact_names = {}
    @product_names = {}
    
    @contact_names[@transaction.id] = Contact.find(@transaction.contact_id).name
    @product_names[@transaction.id] = Product.find(@transaction.product_id).name  
  end

  def edit

  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to transaction_url(@transaction), notice: "La transaction a bien été crée." }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to transaction_url(@transaction), notice: "La transaction a bien été mise à jour." }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @transaction.destroy

    respond_to do |format|
      format.html { redirect_to transactions_url, notice: "La transaction a bien été supprimer." }
      format.json { head :no_content }
    end
  end

  private

    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def set_contacts_products
      @contacts = Contact.all
      @products = Product.all
    end

    def transaction_params
      params.require(:transaction).permit(:contact_id, :product_id, :status, :date_livraison)
    end

end
