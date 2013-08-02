class ApplicationController < ActionController::Base
  protect_from_forgery

  def pdf
    pdf_path = Rails.root.join("config", "test.pdf")
    send_data(File.open(pdf_path).read, filename: "test.pdf")
  end
end
