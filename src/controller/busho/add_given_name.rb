# frozen_string_literal: true

require 'json'

loop do
  File.open("#{__dir__}/given_name.json", 'r') do |f|
    @given_names = JSON.parse(f.read)
  end

  puts 'Enter given name. (Enter "n" not to continfue.) 名前に使う漢字(1文字)を入れてください. (終了は"n"を入力)'
  name = gets.chomp
  break if name == 'n'

  registered = false
  @given_names.each do |f|
    next unless f['name'] == name

    puts 'すでに登録されてます'
    registered = true
    break
  end
  next if registered

  puts 'Enter "Kana" of given name. 漢字の"かな"を入れてください'
  kana = gets.chomp

  @given_names.push({ name: name, kana: kana })

  File.open("#{__dir__}/given_name.json", 'w') do |f|
    f.puts JSON.pretty_generate(@given_names)
  end
end
