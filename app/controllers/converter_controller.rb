require 'converter_helper'

class ConverterController < ApplicationController

  include ConverterHelper

  VALID_DIRECTION_STRINGS = %w(to_f to_c)

  def convert
    validate
    @answer = direction == 'to_c' ? f_to_c(input) : c_to_f(input)
    @direction_caption = direction_description_string
  end


  def validate
    validate_direction_string(direction)
    validate_temperature_input
  end


  def validate_direction_string(string)
    unless VALID_DIRECTION_STRINGS.include?(string)
      raise "Application error: unit parameter has an invalid value (not in #{VALID_DIRECTION_STRINGS.join(', ')})."
    end
  end


  def validate_temperature_input
    unless numeric?(params[:input])
      raise "Temperature input must be a number."
    end
  end


  def direction
    params[:direction]
  end


  def input
    params[:input].to_f
  end


  def numeric?(object)
    true if Float(object) rescue false
  end


  def direction_description_string
    (direction == 'to_f') ? "to Fahrenheit" : "to Celsius"
  end
end

