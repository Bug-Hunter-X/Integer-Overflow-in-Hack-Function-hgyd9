function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  //Check for potential overflow before performing calculations
  if (x > 2147483646){
    return -1; //Return error code or handle the overflow appropriately
  }
  return bar(x) - 1;
}

function main(): void {
  echo baz(5);
  echo baz(2147483647);
}

//This is not perfect overflow handling, but sufficient for small examples.