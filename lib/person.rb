class Person
  # your code here
  # attr_accessor: holds properties
  # accessing properties? assign attr_accessor to variable
  # Argument error? use splat operator
   
  # attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
  # :weight, :handed, :complexion, :t_shirt_size,
  # :wrist_size, :glove_size, :pant_length, :pant_width

  PERSON_ATTR = [
    :name, :birthday, :hair_color, :eye_color, :height,
    :weight, :handed, :complexion, :t_shirt_size,
    :wrist_size, :glove_size, :pant_length, :pant_width
  ]
  attr_accessor(*PERSON_ATTR)
  def initialize (attributes)
    attributes.each do |key, value| 
      if PERSON_ATTR.include?(key)
        send("#{key}=", value)
      end
    end
  end
end
