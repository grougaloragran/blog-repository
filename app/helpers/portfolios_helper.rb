module PortfoliosHelper
   def image_generater(height:, width:)
    "http://placehold.it/#{height}x#{width}"
   end
   
    def portfolio_img img, type
        if img.model.main_image? || img.model.thumb_image?
          img
        elsif type == "thumb"
            image_generater(height: '350', width: '200' )
        elsif type == "main"
            image_generater(height: '600', width: '400')
        end
    end
end
