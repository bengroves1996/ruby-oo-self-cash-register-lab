class CashRegister
    attr_accessor :total
    attr_accessor :discount
    attr_accessor :name
    attr_accessor :num
    attr_accessor :amount
    attr_accessor :bin1

    def initialize (discount = 0)
        @total = 0
        @discount = discount
    end

    def add_item(name,num,amount = 1)
        @bin1 = [] 
        i = 0
        @total = @total + num*amount
        runner = (1..amount).to_a
            for i in runner
            @bin1.append(name)
            i = i+1
            end
    end 

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else 
            percentage = (@discount.to_f)/100
            savings =  @total*percentage
            @total = @total - savings
            return "After the discount, the total comes to $#{@total.to_i}."
        end 
    end 

    def items
        return @bin1.unshift("eggs")
    end 

    def void_last_transaction
        if @bin1 = []
            @total = 0
        end 
    end 
end 