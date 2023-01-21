import Book "book";
import List "mo:base/List";

actor {
    public type Book = Book.Book;
    var books : List.List<Book> = List.nil<Book>();

    public func add_book(book: Book) {
        books := List.push<Book>(book, books);
    };

    public query func get_books() : async [Book]{
        return List.toArray<Book>(books);
    }
}
