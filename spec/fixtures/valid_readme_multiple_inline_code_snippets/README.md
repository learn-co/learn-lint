# JavaScript Comparison Operators

## Objectives

+ Explain the different comparison operators in JS
+ Explain strict comparison operators
+ Use strict comparison operators

## About

Recall that Comparison operators allow you to test the relationship (equality and identity) between objects. You'll be coding along in `js/comparison.js`. Make sure you run `learn -b` to run the tests.

## List

By now you know about the following comparison operators:

| Operator      | Description   | Example |
| ------------- | ------------- |-------- |
| ==            | checks if value of two operands are equal or not. If yes then returns true  | (10 == 20) is not true; hence returns false |
| !=            |checks if the value of 2 operands are equal. If values are not equal, returns true| (a != b) is true; hence returns true |
| >             | checks if value of left operand is greater than value of right operand. If left operand is greater than right operand, returns true  | (10 > 20) is not true hence returns false         |
| <  | checks if value of left operand is less than value of right operand. If left operand is less than right operand, returns true | (10 < 20) is true        |
| >=   | checks if value of left operand is greater than or equal to value of right operand. If it is, returns true; else returns false  | (10 >= 20 ) is false         |
| <=  | checks if value of left operand is less than or equal to right operand. If left operand is less than or equal to right operand, returns true; else returns false  |  (10 <= 20) is true       |

## Strict and Loose Comparison Operators

In JavaScript, in addition to the regular comparison operators, we have **strict comparison operators**; which are strict equals  (`===`) and strict not-equals (`!==`).

#### Loose comparison operators

**Loose comparison operators** ( `==` and `!=` ) are quite liberal - they convert type to match one another. This means that values may be considered equal even if they are different types, since the operator will force coercion of one or both operators into a single type (usually a number) before performing a comparison.

+ Define a function `testFalseLooseEqualityComparison` that does not take any parameters. In this function, define two variables. The first variable should store the integer `0` and the second the integer `1`. The return value of the function should be the evaluation of a loose equality comparison (`==`) of the two variables. The return value should be `false` because `0` and `1` are not the same value.

+ Define a function `testTrueLooseNonEqualityComparison` that does not take any parameters. In this function, define two variables, one storing `0` and one storing `1`. The return value of the function should be the evaluation of a loose non-equality comparison (`!=`) of the two variables. The return value should be `true` because `0` and `1` are not equal.

+ Define a function `testTrueLooseEqualityComparison` that does not take any parameters. The function should contain two variables, one storing `1` and one storing `"1"`. The return value should be the evaluation of a loose equality comparison (`==`) between the two variables. The return value should be `true` because in JavaScript `1` and `"1"` are equal in value.

#### Strict comparison operators

On the other hand, **strict comparison operators** (`===` and `!==` ) compare both type and value equality.

+ Define a function `testFalseStrictEqualityComparison` that does not take any parameters. Inside the function define two variables, one that stores `1` and another that stores `"1"`. The return value of the function should be the result of a strict equality comparison (`===`) between the two variables. The return value should be `false` because `1` an `"1"` are not the same data types.

+ Define a function `testTrueStrictEqualityComparison` that does not take any parameters. Inside the function, define two variables, one that stores `1` and the other stores `"1"`.
The return value of the function should be the result of a strict equality comparison (`===`) between the variable storing the integer, and the `parseInt` value of the variable storing the string.

Here is an Example:
```js
20 == '20' //=> true
20 === '20' //=> false
```

The following is written in all caps to stress its importance; it's qualified in mixed case to note the one minor exception.

**YOU ALMOST ALWAYS WANT TO USE `===` or `!==`.**

Relying on JavaScript's implicit type-casting is inviting subtle and hard to track bugs into your code. Use `===` and `!==`. The only exception is when you're dealing with a value that might be either `null` or `undefined` but can also be `0` or `false`. In this case, a simple `if (variable) { ... }` won't work, because all of the above are false-y. But we can check `if (variable == null) { ... }` or `if (variable != null) { ... }` to catch `null` and `undefined` but not `0` and `false`.

## Resources

* [MDN - Comparison Operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/intro-to-comparison-operators.js' title='JavaScript Comparison Operators'>JavaScript Comparison Operators</a> on Learn.co and start learning to code for free.</p>
