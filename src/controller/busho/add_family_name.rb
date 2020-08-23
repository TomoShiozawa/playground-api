# frozen_string_literal: true

require 'json'

loop do
  File.open("#{__dir__}/family_name.json", 'r') do |f|
    @family_names = JSON.parse(f.read)
  end

  puts 'Enter family name. (Enter "n" not to continfue.) 苗字(漢字)を入れてください. (終了は"n"を入力)'
  name = gets.chomp
  break if name == 'n'

  puts 'Enter "Kana" of family name. 苗字の"かな"を入れてください'
  kana = gets.chomp

  @family_names.push({ name: name, kana: kana })

  File.open("#{__dir__}/family_name.json", 'w') do |f|
    f.puts JSON.pretty_generate(@family_names)
  end
end
