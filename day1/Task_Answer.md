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
