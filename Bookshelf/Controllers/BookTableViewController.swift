//
//  BookTableViewController.swift
//  Bookshelf
//
//  Created by stanley phillips on 1/8/21.
//

import UIKit

class BookTableViewController: UITableViewController {
    // MARK: - Properties
    let sectionSpacingHeight: CGFloat = 5

    // MARK: Lifecyle functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    // MARK: - Table view data source
    
    //wanted to add a little space between the books listings so i used sections instead of rows
    override func numberOfSections(in tableView: UITableView) -> Int {
        return BookController.books.count
    }

    //only 1 row per section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    //sets the section spacing
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return sectionSpacingHeight
    }
    
    // Make the background color show through
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
        
        //switched the indexpath to section to get the proper values for the sections
        cell.textLabel?.text = BookController.books[indexPath.section].name
        cell.detailTextLabel?.text = BookController.books[indexPath.section].author
        cell.detailTextLabel?.textColor = UIColor.systemGray
        cell.imageView?.image = UIImage(named: BookController.books[indexPath.section].image)
        
        //additional styles for the cells
        cell.backgroundColor = UIColor.systemFill
        cell.layer.borderColor = UIColor.systemFill.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        return cell
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            guard let index = tableView.indexPathForSelectedRow else {return}
            guard let destination = segue.destination as? BookDetailViewController else {return}
            let book = BookController.books[index.section]
            destination.book = book
        }
    }
}
