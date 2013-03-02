Deface::Override.new(:virtual_path => "spree/shared/_products",  
                     :name => "example-3",
                     :insert_top => "ul#products", 
                     :text => "<% if Spree::Slide.published.count > 0 %>
  <style type='text/css'> 
  .theme-default #slider {
      margin:0 auto 0 auto;
      width:618px; /* Make sure your images are the same size */
      height:246px; /* Make sure your images are the same size */
  }
  .slider-wrapper {
      margin:0 auto 50px auto;
  }
  </style>

  <div class='slider-wrapper theme-default'>
    <div class='ribbon'></div>
    <div id='slider' class='nivoSlider'>
      <% Spree::Slide.published.order('position ASC').each do |s| %>
        <% if s.body != "" %>
          <%= link_to image_tag(s.image.url, :title => '#' + s.name.to_url), s.link_url %>
        <% else %>
          <%= link_to image_tag(s.image.url), s.link_url %>
        <% end %>
      <% end %>
    </div>

    <% Spree::Slide.published.order('position ASC').each do |s| %>
      <div id='<%= s.name.to_url %>' class='nivo-html-caption'>
        <%= s.body.html_safe %>
      </div>
    <% end %>
  </div>

  <script type='text/javascript'>
  $(window).load(function() {
      $('#slider').nivoSlider();
  });
  </script>
<% end %>
")

Deface::Override.new(:virtual_path => "spree/shared/_header", 
                     :name => "logo", 
                     :replace => "#logo", 
                     :text => "<div id='Letritas'><spam id='the'>(the)</spam><a class='logo' href='#''> Malocchio </a><spam id='Site'>Store</spam></div>
    ")

Deface::Override.new(:virtual_path => "spree/shared/_footer", 
                     :name => "footer", 
                     :replace => "#footer", 
                     :text => "<footer class='alpha omega columns' data-hook>
    ")

Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar", 
                     :name => "nav", 
                     :replace => "nav.columns", 
                     :text => "<nav class='columns alpha omega sixteen2'>
                          <ul id='main-nav-bar' class='inline' data-hook>
                            <li id='home-link' data-hook><%= link_to t(:home), root_path %></li>
                            <li id='link-to-cart' data-hook><%= link_to_cart %></li>
                          </ul>
                        </nav>'>
    ")

Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar", 
                     :name => "cambioURLmenu", 
                     :replace => "#home-link", 
                     :text => "<li id='home-link' data-hook=''>
                        <a class='home-link' href='/'><span aria-hidden='true' data-icon='&#59197'></span>Tienda</a>
                        </li>
                     ")

Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar", 
                     :name => "agregarURLmenu", 
                     :insert_before => "#home-link", 
                     :text => "<li id='malo-link' data-hook=''>
                        <a class='malo-link' href='http://192.87.1.135/malocchio'><span aria-hidden='true' data-icon='&#8962'></span>Inicio</a>
                        </li>

                        <li id='acerca-link' data-hook=''>
                        <a class='acerca-link' href='http://192.87.1.135/malocchio/nosotros'><span aria-hidden='true' data-icon='&#59136'></span>Acerca de</a>
                        </li>

                        <li id='servicios-link' data-hook=''>
                        <a class='servicios-link' href='http://192.87.1.135/malocchio/servicios'><span aria-hidden='true' data-icon='&#59148;'></span>Servicios</a>
                        </li>
                     ")

Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar", 
                     :name => "agregarURLmenuDespues", 
                     :insert_after => "#home-link", 
                     :text => "<li id='revista-link' data-hook=''>
                        <a class='revista-link' href='http://192.87.1.135/malocchio/revista'><span aria-hidden='true' data-icon='&#128214'></span>Revista</a>
                        </li>

                        <li id='contacto-link' data-hook=''>
                        <a class='contacto-link' href='http://192.87.1.135/malocchio/contacto'><span aria-hidden='true' data-icon='&#128319'></span>Contacto</a>
                        </li>          
                     ")
