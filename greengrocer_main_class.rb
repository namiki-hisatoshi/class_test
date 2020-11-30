require "./product.rb"
require "./greengrocer.rb"
require "./user.rb"

# 商品データ1
  product_params1 = [
  {name:"トマト", price:100},
  {name:"きゅうり", price:200},
  {name:"玉ねぎ", price:300},
  {name:"なす", price:400}
  ]

# Greengrocerクラスのインスタンス
  greengrocer1 = Greengrocer.new(product_params1)

# 追加商品データ
  adding_products1 = [
    {name: "ゴボウ", price: 250},
    {name: "レンコン", price: 350}
  ]
# adding_producets1の商品を追加
  greengrocer1.register_product(adding_products1)

# Userクラスのインスタンス
  user = User.new

# 商品を表示
  greengrocer1.disp_products
# 商品を選択
  user.choose_product(greengrocer1.products)
# 引数を設定し、「個数を質問する」メソッドを呼び出す
  greengrocer1.adk_quantity(user.chosen_product)
# 個数を決定
  user.decide_quantity
# 合計金額を計算する
  greengrocer1.calculate_charges(user)
