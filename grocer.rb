require 'pry'

def consolidate_cart(cart)
new_cart = {}

  cart.each do |item|
    item_name = item.keys[0]
    new_cart[item_name] = item.values
    new_cart[item_name].merge(:count => 1)
    binding.pry
    if new_cart[item_name][:count]
      new_cart[item_name][:count] += 1
    else
      consolidated_cart[item_name][:count] = 1
        end
      end
    consolidated_cart
  end
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
