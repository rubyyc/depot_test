class CombineItemsInCart < ActiveRecord::Migration[5.2]
  def up
    #把购物车中同一产品的多个商品替换为单个商品
    Cart.all.each do |cart|
      sums = cart.line_items.group(:product_id).sum(:quantity)
      sums.each do |product_id, quantity|
        if quantity > 1
          # 删除同一产品的多个商品
          cart.line_items.where(product_id: product_id).delete_all
          # 替换为单个商品
          item = cart.line_items.build(product_id: product_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end

  def down
    LineItem.where("quantity>1").each do |line_item|
      line_item.quantity.times do
        LineItem.create(
                    cart_id: line_item.cart_id,
                    product_id: line_item.product_id,
                    quantity: 1
        )
      end
      line_item.destroy
    end

  end
end
