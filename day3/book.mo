
module Book{
    public type Book = {
        title : Text;
        pages: Nat;
    };

    public func create_book(titleText: Text, number_of_pages: Nat) : async Book{
        let newBook : Book = {
            title : Text = titleText;
            pages : Nat = number_of_pages;
        };
        return newBook;
    };
};