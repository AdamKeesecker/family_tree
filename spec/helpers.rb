module Helpers
  def run_ft_with_input(*inputs)
    shell_output = ""
    IO.popen('DB=test ./ft', 'r+') do |pipe|
      inputs.each do |input|
        pipe.puts input
      end
      pipe.close_write
      shell_output = pipe.read
    end
    shell_output
  end
end
