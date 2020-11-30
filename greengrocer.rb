# Greengrocerクラス
class Greengrocer
  attr_reader :products
  def initialize(products_params)
    @products = []
    register_product(products_params)
  end

# 商品を登録
  def register_product(product_params)
    product_params.each do |param|
      @products << Product.new(param)
    end
  end

  # 商品を表示
  def disp_products
    puts "いらっしゃいませ！商品を選んで下さい。"
    @products.each do |product|
      puts "#{product.id}.#{product.name}（#{product.price}円）"
    end
  end

  # 個数を質問
  def adk_quantity(chosen_product)
    puts "#{chosen_product.name}ですね。何個買いますか？"
  end

  # 合計金額を計算する
  def calculate_charges(user)
    total_price = user.chosen_product.price * user.quantity_of_product
  if user.quantity_of_product >= 5
    puts "5個以上なので10％割引となります！"
    total_price *= 0.9
  end
  puts "合計金額は#{total_price.floor}円です。"
  puts "お買い上げありがとうございました！"
  end
end
