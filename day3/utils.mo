import Int "mo:base/Int";
import Array "mo:base/Array";
import List "mo:base/List";

actor {

    /**************************************************************************************
    1. Create a function called **second_maximum** that takes an array [Int] of integers 
    and returns the second largest number in the array.
    ***************************************************************************************/

    public query func second_maximum(array : [Int]) : async Int {
        var arrayFiltered = Array.sort(array, Int.compare);
        arrayFiltered := Array.reverse(arrayFiltered);
        return arrayFiltered[1];
    };

    /**************************************************************************************
    2.create a function called remove_even that takes an array [Nat] and returns a new 
        array with only the odd numbers from the original array
    ***************************************************************************************/
    let f = func(x : Nat) : Bool {
        if (x % 2 == 0) {
            return false;
        } else {
            return true;
        };
    };
    public query func remove_even(array : [Nat]) : async [Nat] {
        return (Array.filter<Nat>(array, f));
    };

    /**************************************************************************************
    3.write a function drop that takes 2 parameters: an array [T] and a Nat n. 
    This function will drop the n first elements of the array and returns the remainder
    ***************************************************************************************/
    
    func drop<T>(xs : [T], n: Nat) :  [T] {
        let list  = List.fromArray<T>(xs);
        let newList = List.drop(list, n);
        return (List.toArray(newList));
    };
};
