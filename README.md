Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

    <ul class="cards">
      <div class="card">
        <% @books.each do |book| %>
          <%if book.cover.present?%>
            <%=  cl_image_tag(book.cover.key, :width => 250) %>
          <%else%>
            <%= cl_image_tag("v5hsn2kpxcxprmmx08o3nanwgb9w", :width => 250) %>
          <%end%>
          <h4 class="book-title"> Title: <%= book.title %></h4>
          <h5 class="book-author"> Author: <%= book.author %></h5>
          <h5 class="book-genre"> Genre: <%= book.genre %></h5>
          <h6 class="book-description"><em><%= book.description %></em></h6>
          <p><%= link_to "read more", book_path(book), class: "btn btn-info btn-sm "%></p>
          <p class="book-rental-price"><%= book.daily_price %>€</p>
        <% end %>
      </div>
      <div class="card">
        <% @books.each do |book| %>
          <%if book.cover.present?%>
            <%=  cl_image_tag(book.cover.key, :width => 250) %>
          <%else%>
            <%= cl_image_tag("v5hsn2kpxcxprmmx08o3nanwgb9w", :width => 250) %>
          <%end%>
          <h4 class="book-title"> Title: <%= book.title %></h4>
          <h5 class="book-author"> Author: <%= book.author %></h5>
          <h5 class="book-genre"> Genre: <%= book.genre %></h5>
          <h6 class="book-description"><em><%= book.description %></em></h6>
          <p><%= link_to "read more", book_path(book), class: "btn btn-info btn-sm "%></p>
          <p class="book-rental-price"><%= book.daily_price %>€</p>
        <% end %>
      </div>
      <div class="card">
        <% @books.each do |book| %>
          <%if book.cover.present?%>
            <%=  cl_image_tag(book.cover.key, :width => 250) %>
          <%else%>
            <%= cl_image_tag("v5hsn2kpxcxprmmx08o3nanwgb9w", :width => 250) %>
          <%end%>
          <h4 class="book-title"> Title: <%= book.title %></h4>
          <h5 class="book-author"> Author: <%= book.author %></h5>
          <h5 class="book-genre"> Genre: <%= book.genre %></h5>
          <h6 class="book-description"><em><%= book.description %></em></h6>
          <p><%= link_to "read more", book_path(book), class: "btn btn-info btn-sm "%></p>
          <p class="book-rental-price"><%= book.daily_price %>€</p>
        <% end %>
      </div>
    </ul>
  </div>