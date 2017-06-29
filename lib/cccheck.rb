require 'pry'
class CreditCardValidation
  card_number = "4929735477250543"

  def initialize(card_number)
    @card_number = card_number
  end

  def over_10
    double_odd.map do |n|
      if n > 9
        i.to_s.chars.each_slice(2).map do |x, y|
          x.to_i + y.to_i
        end
      else
        n
      end

      def backward_card
        card_number.reverse_integer
      end

      def reverse_integer
        backward_card.chars.map(&:to_i)
      end

      def double_odd
        reverse_integer.map.index do|x, y|
          if y == odd
            x * 2
          else
            x
          end
        end
      end

      def sum_final
        sum_greater_10.inject(:+)
      end

      def validate
        if sum_final % 10 == 0
          puts "The number is valid!"
        else
          puts "The number is invalid!"
        end
      end
    end
  end
end
