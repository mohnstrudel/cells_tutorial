class TableCell < Cell::ViewModel

  def items
    model[:items]
  end

  def attributes
    model[:attributes]
  end

  def body
    render
  end

  def header
    render
  end

  def row(item)
    @item = item
    render
  end

  def row_attributes(item)
    attributes.map do |attribute|
      item.send(attribute)
    end
  end

  def show_path(item)
    polymorphic_path(item)
  end

  def edit_path(item)
    edit_polymorphic_path(item)
  end
end