//
//  BookDetailViewController.swift
//  MyBook
//
//  Created by MF839-004 on 2016. 6. 23..
//  Copyright © 2016년 MF839-004. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {

    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookWriter: UILabel!
    @IBOutlet weak var bookDetail: UITextView!
    
    var book:BookInfo?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let newBook = book{
            self.coverImageView.image = newBook.coverImage()
            self.bookTitle.text = newBook.title
            self.bookWriter.text = newBook.writer
            self.bookDetail.text = newBook.desc
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
