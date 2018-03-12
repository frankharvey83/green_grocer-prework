require 'pry'

def consolidate_cart(cart)
  new_hash = {}

  cart.each do |hash|
    hash.each do |product, info|
      if new_hash[product]
        new_hash[product][:count] += 1
      else
        new_hash[product] = info
        new_hash[product][:count] = 1
        end
      end
    end
  return new_hash
end


def apply_coupons(cart, coupons)
    if coupons.length == 0
      return cart
    else
      coupons.each do |coupon|
        name = coupon[:item]
        item = cart[name]

        if(item != nil)
          if(item[:count] >= coupon[:num])
            item[:count] -= coupon[:num]
            coupon_key = "#{name} W/COUPON"
            if(cart[coupon_key] == nil)
              coupon_item = {:price => coupon[:cost], :clearance => item[:clearance], :count => 1}
              cart[coupon_key] = coupon_item
            else
              coupon_item = cart[coupon_key]
              coupon_item[:count] +=1
              end
            end
          end
        end
      end
    cart
  end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
