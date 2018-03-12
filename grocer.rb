require 'pry'

def consolidate_cart(cart)
new_cart = {}

  cart.each do |item|
    item_name = item.keys[0]
    new_cart[item_name] = item.values
    new_cart[item_name].merge(:count => 0)
    pry
end

  new_cart.each do |product|
    new_cart[item_name].merge(:count => 0)
    binding.pry
    if new_cart[item_name]
      new_cart[item_name][:count] += 1
    end
      end
    consolidated_cart
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
