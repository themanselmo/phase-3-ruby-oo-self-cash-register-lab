require "pry"
class CashRegister 
  
    # myRegister = CashRegister.new(10)
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @previous_total = 0
        @items = []
    end

    def total=(newTotal)
        @total = newTotal
    end

    def total
        @total
    end

    def discount 
        @discount
    end

    def items()
        @items
        # binding.pry
    end

def add_item(title, price, quantity = 1)
        # binding.pry
        @previous_total = @total
        @total = @total + (price * quantity)
        if(quantity > 1)
            count = quantity
            while count > 0 
                @items << title
                count -= 1
            end
        elsif(quantity == 1)
            @items << title
        end
    end

    def apply_discount
        if(discount == 0)
            "There is no discount to apply."
        else
            discount_amount = @discount * 10
            @total = @total - discount_amount

            "After the discount, the total comes to $#{total}."
        end
    end

    def void_last_transaction
        @total = @previous_total
    end

end
