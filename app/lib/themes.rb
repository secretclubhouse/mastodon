# frozen_string_literal: true

require 'singleton'
require 'yaml'

class Themes
  include Singleton

  THEME_COLORS = {
    dark: '#12151A',
    light: '#E9E1CE',
  }.freeze

  def initialize
    @conf = YAML.load_file(Rails.root.join('config', 'themes.yml'))
  end

  def names
    @conf.keys
  end
end
