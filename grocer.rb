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
  cart.each do |product, info|
   if info[:clearance]
     info[:price] = (info[:price] * 0.8).round(1)
    end
  end
end

def checkout(cart, coupons)
  cart = consolidate_cart(cart:cart)
  cart = apply_coupons(cart:cart, coupons:coupons)
  cart = apply_clearance(cart:cart)
  total = 0
   
  cart.each do |item, properties|
  total += properties[:price] * properties[:count]
end
 
   total > 100 ? total -= total * 0.1 : nil
   total
end
