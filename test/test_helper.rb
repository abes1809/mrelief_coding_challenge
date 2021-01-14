ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def build_pdf()
    pdf = PdfBuilder::CaliAppBuilder.new
    pdf.name = 'Riley Test'
    pdf.home_address = '1122 south road'
    pdf.apt = 'unit 1f'
    pdf.city = 'chicago'
    pdf.county = 'cook'
    pdf.state = 'IL'
    pdf.zip_code = '60616'
    pdf.home_phone = '1112223333'
    pdf.cal_fresh = "On"
    pdf.cash_aid = "Off"
    pdf.health_coverage = "Off"

    return pdf
  end

  # Add more helper methods to be used by all tests here...
end
