//
//  BookTableViewCell.swift
//  FavoriteBooks
//
//  Created by Tyler Christensen on 10/18/21.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    @IBOutlet weak var labelAuthor: UILabel!
    @IBOutlet weak var labelGenre: UILabel!
    @IBOutlet weak var labelLength: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with book: Book) {
        labelAuthor.text = book.author
        labelGenre.text = book.genre
        labelLength.text = book.length
        
    }

}
