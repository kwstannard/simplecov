# frozen_string_literal: true

module SimpleCov
  module Rounding
    def significant_digits(significant_digits = 4)
      @significant_digits ||= significant_digits
    end

  private

    def round(numeric)
      Float(format("%.#{significant_digits}g", numeric))
    end
  end
end
