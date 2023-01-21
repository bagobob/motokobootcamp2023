import List "mo:base/List";


actor{

    type List<T> = List.List<T>;
    /**************************************************************************************
    1.Write a function unique that takes a list l of type List and
    returns a new list with all duplicate elements removed.
    ***************************************************************************************/
    
    
    // func unique<T>(l : List<T>, equal: (T, T) -> Bool) : List<T> {
    //     let contain = switch(l) {
    //         case(?(head, tail)) { equal(head, tail) };
    //         case(null) { false; };
    //     };
    //     return List.nil<T>();
    // };

    /**************************************************************************************
    1.Write a function reverse that takes l of type List and returns the reversed list.
    ***************************************************************************************/
    func reverse<T>(l : List<T>) :  List<T> {
        return List.nil<T>();
    }
}