class PageController < ApplicationController
    def index
        @page = Page.new(params[:page])
      end
    
    def create
        @page = Page.new(params[:page])
        @page.request = request
        respond_to do |format|
            if @page.deliver
                # re-initialize page object for cleared form
                @page = Page.new
                format.html { render 'index'}
                format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
            else
                format.html { render 'index' }
                format.js   { flash.now[:error] = @message = "Message did not send." }
            end
        end
    end
end
