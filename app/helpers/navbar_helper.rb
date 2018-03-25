module NavbarHelper
    def navbar 
        return if !current_user
    html = "
      <nav class='col-md-2 d-none d-md-block bg-light sidebar'>
        <div class='sidebar-sticky'>
          <ul class='nav flex-column'>
            <li class='nav-item'>
              <a class='nav-link active' href='#'>
                <span data-feather='home'></span>
                Admin <span class='sr-only'>(current)</span>
              </a>
            </li>
            #{user_entry}
            <li class='nav-item'>
              <a class='nav-link' href='#'>
                <span data-feather='shopping-cart'></span>
                Products
              </a>
            </li>
            <li class='nav-item'>
              <a class='nav-link' href='#'>
                <span data-feather='users'></span>
                Customers
              </a>
            </li>
            <li class='nav-item'>
              <a class='nav-link' href='#'>
                <span data-feather='bar-chart-2'></span>
                Reports
              </a>
            </li>
            <li class='nav-item'>
              <a class='nav-link' href='#'>
                <span data-feather='layers'></span>
                Integrations
              </a>
            </li>
          </ul>

        </div>
      </nav>".html_safe
      html
    end
    
    def user_entry 
    html = ''
    if current_user.has_role? :admin  
        html = link_to('Users',users_path, method: :get, class: 'nav-link')
    end
    html.html_safe   
        
    end
end