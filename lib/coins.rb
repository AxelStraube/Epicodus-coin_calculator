class Fixnum
  define_method(:coins) do
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    cents = self
    if cents./(25).!=(0)
      until cents./(25).==(0)
        quarters += 1
        cents -= 25
        pennies = cents
      end
      until cents./(10).==(0)
        dimes += 1
        cents -= 10
        pennies = cents
      end
      until cents./(5).==(0)
        nickels += 1
        cents -= 5
        pennies = cents
      end
    elsif cents./(25).==(0).&(cents./(10).!=(0))
      until cents./(10).==(0)
        dimes += 1
        cents -= 10
        pennies = cents
      end
      until cents./(5).==(0)
        nickels += 1
        cents -= 5
        pennies = cents
      end
    else
      until cents./(5).==(0)
        nickels += 1
        cents -= 5
        pennies = cents
      end
      pennies = cents
    end
    "Quarters: #{quarters}, Dimes: #{dimes}, Nickels: #{nickels}, Pennies: #{pennies}"
  end
end
