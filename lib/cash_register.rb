class CashRegister
  attr_accessor :discount, :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    puts "Added #{quantity} #{title}(s)"
    @total += price * quantity
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total * ((100.0-self.discount.to_f)/100)
      "Your #{self.discount}% discount has been applied, bringing the total to #{total}!"
    else
      "There is no discount."
    end
  end
end

x = CashRegister.new()
puts x.discount