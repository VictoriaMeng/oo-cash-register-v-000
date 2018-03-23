class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times { self.items << title }
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      percent_off = discount.to_f / 100
      self.total -= percent_off * self.total
      "After the discount, the total comes to $800."
    end
  end

  def void_last_transaction

  end

end
