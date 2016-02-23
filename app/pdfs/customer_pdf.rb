class CustomerPdf < Prawn::Document
  def initialize(customer)
    super()
    @customer = customer
    logo
    move_down 100
    body
  end

  def logo
    logopath = "#{Rails.root}/app/assets/images/logo.png"
    image logopath, width: 117, height: 100, position: :center
  end

  def body
    text "#{@customer.name} - #{@customer.cpf} - #{@customer.occupation}"
  end
end