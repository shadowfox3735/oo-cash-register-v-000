class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price*quantity
  end
  
  def apply_discount
    self.total == 0? "There is no discount to apply.": 
    self.total -= self.total * discount/100 "After the discount, the total comes to $#{self.total}."
  end
  
end