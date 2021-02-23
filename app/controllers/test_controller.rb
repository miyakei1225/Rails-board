class TestController < ApplicationController
    # CSRF対策
    protect_from_forgery

    def index
        @message = "Hello World"
    end

    def display
        if request.get? then
            @name = params["name"]
        else
            @name = "値が入力されていません"
        end
    end
end
