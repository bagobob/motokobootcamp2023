# <a id="coding-challenges"> 🥊 Coding challenges </a>
## 1. Write a function **multiply** that takes two natural numbers and returns the product.
```
actor{
    public func multiply(n: Nat, m: Nat) : async Nat {
    return n*m;
    };
};

```
## 2. Write a function volume that takes a natural number n and returns the volume of a cube with side length n.
```
actor {
    public func volume(n : Nat) : async Nat {
        return n*n*n;
    };
};
```

## 3. Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes.
```
actor{
    public func hours_to_minutes(n: Nat) :async Nat {
        return n * 60;
    };
}
```

## 4.  Write two functions **set_counter** & **get_counter** .

- set_counter sets the value of counter to n.
- get_counter returns the current value of counter.
```
actor{
    var counter : Nat = 0;
    public func set_counter(n: Nat) : async (){
        counter := n;
    };
    public query func get_counter() : async Nat {
        return counter;
    };
};
```

## 5. Write a function **test_divide** that takes two natural numbers n and m and returns a boolean indicating if n divides m.
```
actor{
    public query func test_divide(n: Nat, m: Nat) : async Bool {
        return n % m == 0;
    };
};
```

## 6. Write a function **is_even** that takes a natural number n and returns a boolean indicating if n is even.
```
actor{
    public query func is_even(n: Nat) : async Bool{
        return n % 2 == 0;
    };
};
```

[My answers of the challenge](https://m7sm4-2iaaa-aaaab-qabra-cai.raw.ic0.app/?tag=2958946765)