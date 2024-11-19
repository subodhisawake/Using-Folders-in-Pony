primitive Operators
  fun add(a: F64, b: F64): F64 =>
    a + b

  fun subtract(a: F64, b: F64): F64 =>
    a - b

  fun multiply(a: F64, b: F64): F64 =>
    a * b

  fun divide(a: F64, b: F64): F64? =>
    if b == 0 then error else a / b end