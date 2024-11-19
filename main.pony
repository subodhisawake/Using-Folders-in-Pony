use "operators"

actor Main
  new create(env: Env) =>
    try
      let args = env.args
      if args.size() != 4 then error end

      let num1 = args(1)?.f64()?
      let num2 = args(2)?.f64()?
      let operation = args(3)?

      let result = match operation
      | "addition" => Operators.add(num1, num2)
      | "subtraction" => Operators.subtract(num1, num2)
      | "multiplication" => Operators.multiply(num1, num2)
      | "division" => Operators.divide(num1, num2)?
      else
        error
      end

      env.out.print(result.string())
    else
      env.out.print("Usage: program <number1> <number2> <operation>")
      env.out.print("Operations: addition, subtraction, multiplication, division")
    end