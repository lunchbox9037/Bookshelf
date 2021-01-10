//
//  BookDetailViewController.swift
//  Bookshelf
//
//  Created by stanley phillips on 1/8/21.
//

import UIKit

class BookDetailViewController: UIViewController {
    // MARK: - OUTLETS
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    // MARK: - Properties
    var book: Book?
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    
    
    // MARK: - Functions
    func updateView() {
        guard let bookDetails = book else {return}
        nameLabel.text = bookDetails.name
        authorLabel.text = bookDetails.author
        imageLabel.image = UIImage(named: bookDetails.image)
        releaseDateLabel.text = "Released: \(bookDetails.releaseDate)"
        infoLabel.text = bookDetails.info
    }
}
