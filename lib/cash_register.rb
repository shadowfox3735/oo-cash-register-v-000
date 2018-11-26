class CashRegister
  attr_accessor :total, :discount, :items
  @@last_transaction = []
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    quantity.times { self.items << title }
    @@last_transaction = [title, price, quantity]
  end
  
  def apply_discount
    self.total == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total -= self.total*discount/100 }."
  end
  
  def void_last_transaction
    self.total -= last_transaction[1]*last_transaction[2]
    
  end
  
end