function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  echo baz(5);
}

//This code has an integer overflow bug. If you input a large enough number into baz(), the result will overflow.
// The output will not be the correct answer.
