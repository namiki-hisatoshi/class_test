# Userクラスの定義
class User
  attr_reader :chosen_product, :quantity_of_product

  # 商品を選択
  def choose_product(products)
    while true
      print "商品の番号を選択 > "
      select_products_num = gets.to_i
      @chosen_product = products.find{ |product| product.id == select_products_num}
      break if !@chosen_product.nil?
      puts "#{products.first.id}から#{products.last.id}の番号から選んでください。"
    end
  end

  # 個数を決定
  def decide_quantity
    while true
      print "個数を入力 > "
      @quantity_of_product = gets.to_i
      break if @quantity_of_product >= 1
      puts "1個以上から選んでください。"
    end
  end
end
