module ConverterHelper

  def c_to_f(input)
    9.0 * input / 5.0 + 32
  end

  def f_to_c(input)
    (input - 32) * 5.0 / 9.0
  end

end
