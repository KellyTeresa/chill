class BasicObject
  def chill?
    unless self == 'Andrew'
      true
    else
      false
    end
  end
  def is_chill?
    chill?
  end
end


class Object
  alias old_puts puts
  def puts (o) 
      if o.class == String 
        color = rand(30..49)
        chill_text = "\e[#{color}m#{o}\e[0m"
        old_puts(chill_text)
      else
        old_puts o
      end
  end
end