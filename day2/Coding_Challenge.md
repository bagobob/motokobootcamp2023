# <a id="coding-challenges"> 🥊 Coding challenges </a>
## 1. Write a function **average_array** that takes an array of integers and returns the average value of the elements in the array.
```
actor{
     public func average_array(array: [Int]): async Int {
    var sum : Int = 0;
    for(element in array.vals()){
      sum += element;
    };
    return (sum/array.size());
  };
};
 
```

## 2. Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
```
actor{
    public func count_character(t: Text, c: Char): async Nat{
    var count : Nat = 0;
    for(element in t.chars()){
      if(c == element){
        count += 1;
      };
    };
    return count;
  };
}
```

## 3. Write a function factorial that takes a natural number n and returns the factorial of n.
```
import Iter "mo:base/Iter";
actor {
  
  public func factorial(n : Nat) : async Nat {
    var product : Nat = 1;
    if(n == 0){
      return 1;
    }else{
      for (i in Iter.range(1, n)) {
      product *= i;
    };
    return product;
    };
  };
};
```

## 4. Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
```
import Array "mo:base/Array";
import Text "mo:base/Text";
actor{
  type Pattern = Text.Pattern;
  let p : Pattern = #char(' ');
  public func number_of_words(t: Text) : async Nat{
    var array : [Text] = [];
    for(element in Text.split(t, p)){
      array := Array.append<Text>(array, [element]);
    };
      return array.size();
  };
}
```

## 5. Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
```
actor{
  
}
``` 