module ApplicationHelper
  include Pagy::Frontend
  
  def show_field(field_name, field_label)
    raw('<div class="form-floating">' +
    '<div class="form-control bg-success text-dark bg-opacity-25">' + field_name + '</div>' +
    '<label>' + field_label + '</label>' +
    '</div>')
  end
end
