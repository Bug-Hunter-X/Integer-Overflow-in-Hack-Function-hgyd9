# Integer Overflow Bug in Hack

This repository demonstrates an integer overflow bug in a simple Hack program. The program consists of three functions: `foo`, `bar`, and `baz`, which perform basic arithmetic operations.  The `baz` function is susceptible to integer overflow if a large enough integer is passed as an argument. 

The `bug.hack` file contains the buggy code, and `bugSolution.hack` demonstrates the solution.

## Bug

The bug is caused by the lack of overflow checking in the arithmetic operations. If the intermediate or final result exceeds the maximum representable integer value, an overflow will occur. This will cause unexpected results.

## Solution

The solution involves using a larger integer type or implementing explicit overflow checking. We've added appropriate error handling to mitigate the integer overflow issue.