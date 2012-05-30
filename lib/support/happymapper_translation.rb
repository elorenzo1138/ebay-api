

module HappymapperTranslation

  def self.included(base)
    base.include Happymapper
    base.extend ClassMethods
  end

  module ClassMethods
    def root_element_name(name)
      tag(name)
    end

    def array_node(name, tag, options={})
    end

    def boolean_node(name, tag, options={})
    end

    def cdata_node(name, tag, options={})
    end

    def money_node(name, tag, options={})
    end

    def numeric_node(name, tag, options={})
      element name, Float, translate_options(options)
    end

    def object_node(name, tag, options={})
    end

    def text_node(name, tag, options={})
      element name, Float, translate_options(options)
    end

    def time_node(name, tag, options={})
    end

    def value_array_node(name, tag, options={})
    end

    def translate_options(options)
      hm_options = {}
      if !options[:optional]
        hm_options[:required] = true
      end
      hm_options
    end

  end

end
