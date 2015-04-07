# 実行方法: bin/rake db:reset db:seed

#親カテゴリ
Category.create(:name => 'root', :code => 000000, :parent_id => 0)
Category.create(:name => 'メンズ', :code => 100000, :parent_id => 1)#2
Category.create(:name => 'レディース', :code => 200000, :parent_id => 1)#3
Category.create(:name => 'キッズ', :code => 300000, :parent_id => 1)#4
Category.create(:name => 'インテリア', :code => 400000, :parent_id => 1)#5
Category.create(:name => '家電製品', :code => 500000, :parent_id => 1)#6
Category.create(:name => '本', :code => 600000, :parent_id => 1)#7
Category.create(:name => 'チケット', :code => 700000, :parent_id => 1)#8
Category.create(:name => 'おもちゃ', :code => 800000, :parent_id => 1)#9
Category.create(:name => 'エンターテインメント', :code => 900000, :parent_id => 1)#10
Category.create(:name => 'スポーツ', :code => 1000000, :parent_id => 1)#11


#メンズ子カテゴリ
Category.create(:name => 'トップス', :code => 100100, :parent_id => 2)
Category.create(:name => 'アウター', :code => 100200, :parent_id => 2)
Category.create(:name => 'パンツ', :code => 100300, :parent_id => 2)
Category.create(:name => '靴', :code => 100400, :parent_id => 2)
Category.create(:name => '帽子', :code => 100500, :parent_id => 2)
Category.create(:name => 'その他', :code => 100600, :parent_id => 2)

#レディース子カテゴリ
Category.create(:name => 'トップス', :code => 200100, :parent_id => 3)
Category.create(:name => 'アウター', :code => 200200, :parent_id => 3)
Category.create(:name => 'パンツ', :code => 200300, :parent_id => 3)
Category.create(:name => '靴', :code => 200400, :parent_id => 3)
Category.create(:name => '帽子', :code => 200500, :parent_id => 3)
Category.create(:name => 'その他', :code => 200600, :parent_id => 3)



#キッズ子カテゴリ
Category.create(:name => 'トップス', :code => 300100, :parent_id => 4)
Category.create(:name => 'アウター', :code => 300200, :parent_id => 4)
Category.create(:name => 'パンツ', :code => 300300, :parent_id => 4)
Category.create(:name => '靴', :code => 300400, :parent_id => 4)
Category.create(:name => '帽子', :code => 300500, :parent_id => 4)
Category.create(:name => 'その他', :code => 300600, :parent_id => 4)


#インテリア/家具の子カテゴリー
Category.create(:name => 'ソファ/椅子', :code => 400100, :parent_id => 5)
Category.create(:name => 'テーブル/机', :code => 400200, :parent_id => 5)
Category.create(:name => 'ベット/寝具', :code => 400300, :parent_id => 5)
Category.create(:name => '収納', :code => 400400, :parent_id => 5)
Category.create(:name => '照明', :code => 400500, :parent_id => 5)
Category.create(:name => 'キッチン', :code => 400600, :parent_id => 5)
Category.create(:name => 'その他', :code => 400700, :parent_id => 5)



#家電製品の子カテゴリー
Category.create(:name => 'パソコン/タブレット', :code => 500100, :parent_id => 6)
Category.create(:name => 'スマートフォン/携帯', :code => 500200, :parent_id => 6)
Category.create(:name => '生活家電', :code => 500300, :parent_id => 6)
Category.create(:name => 'オーディオ機器', :code => 500400, :parent_id => 6)
Category.create(:name => 'テレビ/映像機器', :code => 500500, :parent_id => 6)
Category.create(:name => 'カメラ', :code => 500600, :parent_id => 6)
Category.create(:name => 'その他', :code => 500700, :parent_id => 6)


#本の子カテゴリー
Category.create(:name => '漫画/コミック', :code => 600100, :parent_id => 7)
Category.create(:name => '文学/小説', :code => 600200, :parent_id => 7)
Category.create(:name => 'アート/エンターテインメント', :code => 600300, :parent_id => 7)
Category.create(:name => 'ノンフィクション', :code => 600400, :parent_id => 7)
Category.create(:name => '雑誌', :code => 600500, :parent_id => 7)
Category.create(:name => '人文/社会', :code => 600600, :parent_id => 7)
Category.create(:name => '趣味/スポーツ', :code => 600700, :parent_id => 7)
Category.create(:name => '住まい/暮らし', :code => 600800, :parent_id => 7)
Category.create(:name => 'ビジネス/経済', :code => 600900, :parent_id => 7)
Category.create(:name => 'コンピュータ/インターネット', :code => 401000, :parent_id => 7)
Category.create(:name => '教育', :code => 601100, :parent_id => 7)
Category.create(:name => '医学', :code => 601200, :parent_id => 7)
Category.create(:name => 'その他', :code => 601300, :parent_id => 7)



#チケットの子カテゴリー
Category.create(:name => '国内アーティスト', :code => 700100, :parent_id => 8)
Category.create(:name => '海外アーティスト', :code => 700200, :parent_id => 8)
Category.create(:name => 'イベント系', :code => 700300, :parent_id => 8)
Category.create(:name => 'スポーツ', :code => 700400, :parent_id => 8)
Category.create(:name => '演劇/舞台', :code => 700500, :parent_id => 8)
Category.create(:name => 'ミュージカル/お笑い', :code => 700600, :parent_id => 8)
Category.create(:name => 'その他', :code => 700700, :parent_id => 8)


#おもちゃの子カテゴリー
Category.create(:name => 'テレビゲーム', :code => 800100, :parent_id => 9)
Category.create(:name => 'トレーディングカード', :code => 800200, :parent_id => 9)
Category.create(:name => 'フィギア', :code => 800300, :parent_id => 9)
Category.create(:name => 'プラモデル', :code => 800400, :parent_id => 9)
Category.create(:name => 'ラジコン', :code => 800500, :parent_id => 9)
Category.create(:name => 'ぬいぐるみ', :code => 800600, :parent_id => 9)
Category.create(:name => 'LEGO', :code => 800700, :parent_id => 9)
Category.create(:name => 'その他', :code => 800800, :parent_id => 9)




#エンターテインメントの子カテゴリー
Category.create(:name => 'DVD/Blu-ray', :code => 900100, :parent_id => 10)
Category.create(:name => '楽器', :code => 900200, :parent_id => 10)
Category.create(:name => '美術品', :code => 900300, :parent_id => 10)
Category.create(:name => 'コレクション', :code => 900400, :parent_id => 10)
Category.create(:name => 'その他', :code => 900500, :parent_id => 10)


#スポーツの子カテゴリー
Category.create(:name => 'スポーツ用品', :code => 1000100, :parent_id => 11)
Category.create(:name => 'アウトドア用品', :code => 1000200, :parent_id => 11)
Category.create(:name => '自電車', :code => 1000300, :parent_id => 11)
Category.create(:name => 'フィッシング', :code => 1000400, :parent_id => 11)
Category.create(:name => 'その他', :code => 1000500, :parent_id => 11)

# アイテムのサンプル
Item.create(category: Category.find_by_name('スポーツ'), sub_category: Category.find_by_name('スポーツ用品'), title: 'バット')
