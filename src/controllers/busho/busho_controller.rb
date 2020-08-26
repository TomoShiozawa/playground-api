# frozen_string_literal: true

require 'json'
require 'sinatra'

# BushoController
class BushoController < Sinatra::Base
  configure do
    File.open("#{__dir__}/family_name.json") do |j|
      family_names = JSON.parse(j.read).map { |h| h.transform_keys(&:to_sym) }
      set :family_names, family_names
    end

    File.open("#{__dir__}/given_name.json") do |j|
      given_names = JSON.parse(j.read).map { |h| h.transform_keys(&:to_sym) }
      set :given_names, given_names
    end
  end

  get '/busho' do
    return_name = name
    {
      name: return_name[:name],
      name_kana: return_name[:name_kana],
      leadership: rand(1..100),
      valor: rand(1..100),
      intelligence: rand(1..100),
      politics: rand(1..100)
    }.to_json
  end

  private

  def family_name
    settings.family_names.sample
  end

  def given_name
    settings.given_names.sample
  end

  def name
    temp_family_name = family_name
    temp_given_name_first = given_name
    temp_given_name_second = given_name
    temp_given_name_second = given_name while temp_given_name_second[:kana] == temp_given_name_first[:kana]
    {
      name: "#{temp_family_name[:name]} #{temp_given_name_first[:name]}#{temp_given_name_second[:name]}",
      name_kana: "#{temp_family_name[:kana]} #{temp_given_name_first[:kana]}#{temp_given_name_second[:kana]}"
    }
  end

  def name_kana; end
end
