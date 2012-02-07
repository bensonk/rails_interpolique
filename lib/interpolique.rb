module Interpolique
  module InterpoliqueSql
    extend ActiveSupport::Concern

    include do
    end

    module ClassMethods
      def b(string, context)
        string.gsub /\^\{(.*?)\}/ do |s|
          val = context.eval(s[2..-2])
          "b64d(\"#{Base64.encode64(val).strip}\")"
        end
      end
    end
  end
end

ActiveRecord::Base.send :include, Interpolique::InterpoliqueSql
