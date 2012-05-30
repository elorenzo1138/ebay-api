require 'money_node'


module HappyMapper

  module XMLMappingTranslation

    def self.included(base)
      base.include HappyMapper
      base.extend ClassMethods
    end

    module ClassMethods

      def root_element_name(name)
        tag(name)
      end

      def array_node(*args)
        if Hash===args[-1]
          options = args.pop
        end

        name, path1, path2 = args
        tag = path2 ? "#{path1}/#{path2}" : path1

        raise "Only support default value of [] on array_node" if options.has_key?(:default_value) && options[:default_value] != []
        options.delete(:default_value)

        klass = options.delete(:class)
        raise "Require :class option on array_node" if klass.nil?
        has_many name, klass, build_hm_options(tag, options).merge(:single => false)
      end

      def boolean_node(name, tag, true_value, false_value, options={})
        raise "Only support 'true', 't', and '1' as true values" unless [ 'true', 't', '1' ].include?(true_value.downcase)
        element name, Boolean, build_hm_options(tag, options)
      end

      def cdata_node(name, tag, options={})
        element name, String, build_hm_options(tag, options).merge({:on_save => lambda { |v| 
      end

      def money_node(name, tag, options={})
        has_one name, Happymapper::MoneyNode, build_hm_options(tag, options)
      end

      def numeric_node(name, tag, options={})
        element name, Float, build_hm_options(tag, options)
      end

      def object_node(name, tag, options={})
        klass = options.delete(:class)
        raise "Require :class option on object_node" if klass.nil?
        has_one name, klass, build_hm_options(tag, options).merge(:single => true)
      end

      def text_node(name, tag, options={})
        element name, String, build_hm_options(tag, options)
      end

      def time_node(name, tag, options={})
        element name, DateTime, build_hm_options(tag, options)
      end

      def value_array_node(name, tag, options={})
      end

      def build_hm_options(tag, xm_options)
        hm_options = { :xpath => "./#{tag}" }
        xm_options = xm_options.dup
        raise "Happymapper only supports optional nodes" if !xm_options.delete(:optional) || !xm_options.delete(:hm_optional)
        raise "Unsupported options: #{xm_options.keys}"
        hm_options
      end

    end

  end

end
