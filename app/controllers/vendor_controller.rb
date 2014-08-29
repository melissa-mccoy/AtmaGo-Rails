class VendorController < ApplicationController
  def index
    Vendor.all.to_json
  end
end
