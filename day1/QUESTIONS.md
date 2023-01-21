# <a id="questions"> 🙋 Questions </a>

## 1. How Much is the current memory capacity of a canister?

The current memory capacity of a canister smart contract is limited to 48GB of memory
[Source on 18/01/2023](https://forum.dfinity.org/t/increased-canister-smart-contract-memory/6148/139)

## 2. What is the issue with the following code template
```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
} 
```
The variable `counter` is declared with `let`, so it is immutable.
So the function above can't modify the value of counter which is immutable.

## 3. What is the issue with the following code sample
```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```
The variable `message` is of type `Text` and can't possibly have `0` as value.

## 4. False or True : we can remove the keyword async for return argument of a query function since queries are faster to answer.

False

# <a id="tasks"> 🙋 Task Answers </a>

## Task 1 : The return type of the hash function of blob module is Nat32. 
[Source](https://internetcomputer.org/docs/current/developer-docs/build/cdks/motoko-dfinity/base/Blob)

## Task 2 : Smart contract with two integers as input and multiply those numbers together before returning a value.
```
actor{
    public func multiply(n : Int, m: Int) : async Int {
        return n*m;
    };
};
```
## Task 3 : Smart contract with two integers as input and multiply those numbers together before returning a value and return the square
```
import Float "mo:base/Float";
actor{
    public func multiply_and_add(n: Float, m: Float) : async Float {
        return Float.sqrt((n*m) + 10.3);
    };
};
```