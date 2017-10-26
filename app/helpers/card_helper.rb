module CardHelper
  TYPES = {
    event_jungle: {
      text: 'อีเว้นท์ป่า',
      icon: 'paw'
    },
    event_town: {
      text: 'อีเว้นท์เมือง',
      icon: 'home'
    },
    item_help: {
      text: 'ไอเท็มรักษา',
      icon: 'flask'
    },
    item_poke: {
      text: 'ไอเท็มกลั่นแกล้ง',
      icon: 'map-signs'
    }
  }

  STATUSES = {
    draft: 'secondary',
    printed: 'info',
    approved: 'success',
    modify_needed: 'warning',
    deleted: 'danger'
  }

  def card_type_icons(type, klass=nil)
    TYPES.map do |key, value|
      card_type_icon(key, "#{klass} #{'d-none' if type.try(:to_sym) != key}")
    end.join("\n").html_safe
  end

  def card_type_icon(type, klass= nil)
    content_tag :i,
                '',
                class: "fa fa-#{TYPES[type.to_sym][:icon]} #{klass}",
                data: { value: type }
  end

  def card_type_name(type)
    if type
      TYPES[type.to_sym].try(:[], :text)
    end
  end

  def card_status(status)
    content_tag :span,
                status.titleize,
                class: "badge badge-#{STATUSES[status.to_sym]}"
  end

  def card_type_collection
    TYPES.map { |key, value| [ value[:text], key] }
  end
end
