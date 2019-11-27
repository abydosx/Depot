class Product < ApplicationRecord
  has_many :line_items;
  before_destroy :ensure_not_referenced_by_any_line_item

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {gteater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url,allow_blank: true, format: {
      with: %r{|.(gif/jpg/png)|Z}i,
      message: '图片格式为GIF，JPG，PNG'
  }


  private
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, '商品已存在')
      throw :abort
    end
  end
end
