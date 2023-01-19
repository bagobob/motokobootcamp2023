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
