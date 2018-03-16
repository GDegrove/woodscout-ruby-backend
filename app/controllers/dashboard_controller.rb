class DashboardController < AuthenticatedController
    def index 
        @message = "Hello, World"
    end
end
