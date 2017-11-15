class HomeController < ApplicationController
  def index
    @hit_count = Rails.cache.read("hit_count")
    @hit_count = 0 if @hit_count.nil?
    Rails.cache.write("hit_count", @hit_count + 1)
    puts @hit_count
  end
end
