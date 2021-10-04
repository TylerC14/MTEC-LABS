import UIKit

struct Book {
    var title: String
    var author: String
    
    
    init(title: String, author: String) {
        self.title = title
        self.author = author
        
    }
}
var bestBook = Book(title: "The Martian", author: "Andy Weir")
print("One of my favorite books is called \(bestBook.title), it is written by \(bestBook.author).")



