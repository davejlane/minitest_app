require "minitest_helper"

describe "Products integration" do
  it "shows products' name" do
    product = Product.create!(name: "Tofu")
    visit product_path(product)
    page.text.must_include "Tofu"
  end
end
