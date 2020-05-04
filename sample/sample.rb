# コメント コメント
class User < ApplicationRecord
  include ActionView::Helpers::NumberHelper
  has_many :entries, class_name: 'Article'
  attr_accessor :password
  enum status: { default: 0, confirmed: 1 }
  validates :name, format: { with: /\A\w+\z/, allow_blank: true }
  before_save do
    self.token ||= SecureRandom.hex
  end

  def display_name
    @display_name ||= "#{name} さん"
  end
end