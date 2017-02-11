require "templus_models/engine"
require "cancancan"
require "ransack"
require "kaminari"
require "simple_form"
require "nested_form"
require "rails-jquery-autocomplete"

require 'templus_models/configuration'

module TemplusModels

  class << self
    def configure
      if block_given?
        yield(Configuration.instance)
      else
        Configuration.instance
      end
    end
  end

  module Routes
    @@registrar = true

    def self.registrar
      @@registrar
    end

    def self.registrar=(value)
      @@registrar = value
    end
  end
end
