require "rspec"
require File.join('..', '..', 'app', 'helpers', 'converter_helper')

describe ConverterHelper do

  #subject { ConverterHelper.new }

  class Converter
    include ConverterHelper
  end
  let(:converter) { Converter.new }

  it "should convert zero correctly (C to F)" do
    converter.c_to_f(0.0).should == 32.0
  end

  it "should convert zero correctly (F to C)" do
    converter.f_to_c(0.0).should == -17.77777777777778
  end
end