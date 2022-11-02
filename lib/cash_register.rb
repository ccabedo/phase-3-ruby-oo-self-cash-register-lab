class CashRegister

    attr_accessor :discount, :total, :items
  
    def initialize(discount = 0)
      @discount = discount
      @total = 0
      @items = []
    end
  
    def add_item(title, price, quantity = 1)
      quantity.times do
        self.items << title
      end
      self.total += (price * quantity)
    end
  
    def apply_discount
      if (self.discount === 0) 
        "There is no discount to apply."
      else
        percent = self.discount.to_f / 100
        self.total = self.total - (self.total * percent)
        "After the discount, the total comes to $#{self.total.to_i}."
      end
    end
end