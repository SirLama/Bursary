<% provide(:title, "Apply for bursary")%>
<h1>Application form</h1>
<div class="row">
   <%= form_for(@bersary, url: bersaries_new_path) do |f| %>
            <%= f.label :Firstname %>
            <%= f.text_field :f_name, class:'form-control' %>
            <%= f.label :Lastname %>
            <%= f.text_field :l_name, class:'form-control' %>
            <%= f.label :Middlename %>
            <%= f.text_field :m_name, class:'form-control' %>
            <%= f.label :ID %>
            <%= f.text_field :id_no, class:'form-control' %>
            <%= f.label :Telephone %>
            <%= f.text_field :telephone, class:'form-control' %>
            <%= f.label :Gender %>
            <%= f.text_field :gender, class:'form-control' %>
            <%= f.label :Employed? %>
            <%= f.text_field :work, class:'form-control' %>
            <%= f.label :county %>
            <%= f.text_field :county, class:'form-control' %>
            <%= f.label :Institution %>
            <%= f.text_field :school, class:'form-control' %>
            <%= f.label :Amount %>
            <%= f.text_field :amount, class:'form-control' %>
            <%= f.submit "Submit", class: "btn btn-primary" %>
        <% end %>
    </div>

