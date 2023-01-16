module ApplicationHelper
  def named_enum(enums)
    enums.map{|name, index| [name.titleize, name] }
  end
end
