# <a id="questions"> 🙋 Questions </a>

## 1. How Much is the current memory capacity of a canister?

The current memory capacity of a canister smart contract is limited to 4GB of memory

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