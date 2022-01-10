# frozen_string_literal: true

require_relative "fpiskur_palindrome/version"

module FpiskurPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private
    # Returns content for palindrome testing.
    def processed_content
      # "Ruby is smart enough to apply the scan to the string itself", so no self.scan.... necessary
      to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include FpiskurPalindrome
end

class Integer
  include FpiskurPalindrome
end