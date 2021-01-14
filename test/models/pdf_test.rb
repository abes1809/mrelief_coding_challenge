require 'test_helper'

class PdfTest < ActiveSupport::TestCase
    test "Should save PDF" do
        pdf = build_pdf()
        new_pdf = pdf.process
        assert new_pdf
    end

    test 'Check for correct info on PDF' do 
        pdf = FillablePDF.new("#{Rails.root}/public/cali_apps/Riley Test_application.pdf")
        
        assert pdf.field(:"NAME (FIRST, MIDDLE, LAST)") == 'Riley Test'
        assert pdf.field(:ZIP_CODE) == '60616'
        assert pdf.field(:CalFresh) == "On"
    end
end