class CleanCut
  class << self

    DEFAULT_Options = {
      :string_to_cut   => "",
      :character_limit => nil
    }

    def cut(user_options={})
      options = DEFAULT_Options.merge(user_options)

      @string_to_cut   = options[:string_to_cut]
      @character_limit = options[:character_limit]

      raise "character limit must be >= 0." if @character_limit == nil
      raise "string must have a length >= 1" if @string_to_cut.length < 1

      cut_index = find_clean(@string_to_cut, @character_limit)

      if cut_index == 0
        first_part = ""
        second_part = @string_to_cut[(cut_index..@string_to_cut.length - 1)]
      elsif cut_index > 0
        first_part = @string_to_cut[(0..cut_index)].chomp " "
        second_part = @string_to_cut[(cut_index + 1..@string_to_cut.length - 1)]
      end

      [first_part, second_part].map do |string|
        if string == nil
          string = ""
        else
          string = string
        end
      end
    end

    private

    def find_clean(string, limit)
      return limit if limit == 0 || !string[limit] || string[limit] == " "
      find_clean(string, limit-= 1)
    end
  end
end
