module PdfBuilder
    class CaliAppBuilder
        attr_accessor :name, :home_address, :apt, :city, :county, :state, :zip_code, :home_phone,
        :cal_fresh, :cash_aid, :health_coverage

        def process
            pdf = FillablePDF.new("#{Rails.root}/public/application.pdf")

            pdf.set_fields(:"NAME (FIRST, MIDDLE, LAST)" => name,
                            HOME_ADDRESS_OR_DIRECTIONS_TOYOUR_HOME: home_address,
                            APARTMENT: apt,
                            CITY: city,
                            COUNTY: county,
                            STATE: state,
                            ZIP_CODE: zip_code,
                            HOME_PHONE: home_phone,
                            CalFresh: cal_fresh,
                            Cash_Aid: cash_aid,
                            Health_Coverage: health_coverage
                            )

            pdf.save_as("#{Rails.root}/public/cali_apps/#{name}_application.pdf")
            pdf.close

            return pdf
        end
    end
end