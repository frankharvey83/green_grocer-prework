require 'pry'

def consolidate_cart(cart)
  new_hash = {}

  cart.each do |hash|
    hash.each do |product, info|
      new_hash[product].merge(:count => 1)
      if new_hash[product]
        new_hash[product][:count] += 1
        end
      end
    end
  return new_hash
end


def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
