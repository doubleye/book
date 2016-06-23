//
//  BookInfo.swift
//  MyBook
//
//  Created by MF839-004 on 2016. 6. 23..
//  Copyright © 2016년 MF839-004. All rights reserved.
//

import Foundation
import UIKit

class BookInfo{
    let title:String
    let writer:String
    let desc:String
    let cover:String?
    
    
    init(newTitle:String, newWriter:String, newDesc:String, newCover:String?){
        title = newTitle
        writer = newWriter
        desc = newDesc
        cover = newCover
    }
    
    convenience init(){
        self.init(newTitle:"EMPTY_TITLE", newWriter: "EMPTY_WRITER", newDesc: "EMPTY_DESC", newCover: nil)
    }
    
    convenience init(newTitle title:String){
        self.init(newTitle:title, newWriter: "EMPTY_WRITER", newDesc: "EMPTY_DESC", newCover: nil)
    }
    
    func coverImage() -> UIImage?{
        //let retImage = UIImage(named: self.cover!)
//        
//        if let imgStr = self.cover{
//            
//        }
        
        guard let imageStr = self.cover else{
            return nil
        }
        
        
        return UIImage(named: imageStr)
    }
}

class BookInfoWeb: BookInfo{
    let bookURL:String?
    
    override init(newTitle: String, newWriter: String, newDesc: String, newCover: String?) {
        bookURL = nil
        super.init(newTitle: newTitle, newWriter: newWriter, newDesc: newDesc, newCover: nil)
    }
    
    init(newURL:String){
        bookURL = newURL
        super.init(newTitle: "EMPTY_TITLE", newWriter: "EMPTY_WRITER", newDesc: "EMPTY_DESC", newCover: nil)
    }
}