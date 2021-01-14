class CaliAppController < ApplicationController
    def new
    end

    def create
        pdf = build_pdf(params)
        new_pdf = pdf.process
        
        if new_pdf
            send_file(
                "#{Rails.root}/public/cali_apps/#{pdf.name}_application.pdf",
                filename: "#{pdf.name}_application.pdf",
                type: "application/pdf",
                disposition: "attachment"
              )
        else
            redirect_to '/', alert: "Encoutnered error while creating PDF please try again."
        end
    end

    private

    def build_pdf(params)
        pdf = PdfBuilder::CaliAppBuilder.new
        pdf.name = params['name']
        pdf.home_address = params['home_address']
        pdf.apt = params['apt']
        pdf.city = params['city']
        pdf.county = params['county']
        pdf.state = params['state']
        pdf.zip_code = params['zip']
        pdf.home_phone = params['home_phone']
        params['cal_fresh'] != nil ? pdf.cal_fresh = params['cal_fresh'] : pdf.cal_fresh = "Off"
        params['cash_aid'] != nil ? pdf.cash_aid = params['cash_aid'] : pdf.cash_aid = "Off"
        params['health_coverage'] != nil ? pdf.health_coverage = params['health_coverage'] : pdf.health_coverage = "Off"

        return pdf
    end

end