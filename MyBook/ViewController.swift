//
//  ViewController.swift
//  MyBook
//
//  Created by MF839-004 on 2016. 6. 23..
//  Copyright © 2016년 MF839-004. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var myBooks = [BookInfo]()
    var login:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myBooks = self.loadBookData()
        print(myBooks)
    }
    
    override func viewDidAppear(animated: Bool) {
        //self.showLoginPopup()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myBooks.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("book_cell", forIndexPath: indexPath) as? BookTableViewCell
        
        guard let myCell = cell else{
            return UITableViewCell()
        }
        
        
        // Configure the cell...
        myCell.bookTitle?.text = myBooks[indexPath.row].title
        myCell.bookWriter?.text = myBooks[indexPath.row].title
        myCell.coverImageView?.image = myBooks[indexPath.row].coverImage()
        
//        cell.textLabel?.text = myBooks[indexPath.row].title
//        cell.detailTextLabel?.text = myBooks[indexPath.row].writer
//        cell.imageView?.image = myBooks[indexPath.row].coverImage()
//        
//        print("cellForRowAtIndexPath")
        
        return myCell
    }
    
    func loadBookData() -> [BookInfo]{
        let book1 = BookInfo(newTitle: "Swift", newWriter: "매트 뉴버그", newDesc: "『스위프트로 하는 iOS 9 프로그래밍』은 지난 판인 《Swift로 하는 iOS 프로그래밍》의 개정판 격으로, 가장 최신 버전인 iOS 9, 스위프트 2.0, Xcode 7으로 업데이트된 내용을 담고 있다. 따라서, 이 책은 전작에 비해 작게는 콘솔 출력문의 변화부터, 크게는 스위프트 객체 타입의 유연성을 위한 프로토콜, 제너릭, 익스텐션, 그리고 콜렉션 타입에 이르기까지 꽤 광범위한 부분에서 개선 및 추가, 보완이 이뤄졌다.", newCover: "iOS9")
        
        let book2 = BookInfo(newTitle: "iOS 9 프로그래밍", newWriter: "닐 스미스", newDesc: "[핵심만 골라 배우는 iOS 9 프로그래밍]은 iOS 9 SDK와 Xcode 7, 그리고 스위프트 2 프로그래밍 언어를 이용하여 iOS 애플리케이션을 생성하는 데 필요한 기술을 가르치는 데 목적을 둔다. 독자들이 iOS 개발이 처음인지, 아니면 iOS 8 개발 경험이 있어서 iOS 9의 기능들과 최신 스위프트 프로그래밍 언어를 빠르게 습득하고자 하는지에 따라 이 책의 활용 방법이 크게 달라지겠지만, 이 책은 양쪽 모두를 대상으로 하는 iOS 참고서 역할을 하므로 안심하고 배울 수 있을 것이다.", newCover: "swift")
        
        let book3 = BookInfo(newTitle: "일리네어 라이프", newWriter: "DOK2", newDesc: "모든 난관을 뚫고, 특히 가난이라는 큰 장애를 극복하고 독보적인 자신만의 음악 세계를 만들어낸 도끼! 심장을 쥐어짜듯이 내뱉는 그의 랩과 가사는 간결하면서도 강렬하다. 최근 미국 명문 버클리 대학 등에서는 전설의 랩퍼 ‘투팍 사커(Tupac Amaru Shakur)’의 시를 강의 교재로 채택하는 등, 랩퍼의 가사를 ‘시’ 문학으로 받아들이는 경향이 있다. 때로는 쌍스러운 말도 있어서 무척 직설적인 화법의 도끼 가사는 가장 효과적인 메시지 전달 수단이기도 하다. 가사를 통해 다하지 못한 사회에 대한 그의 생각, 돈에 대한 그의 생각, 인생에 대한 그의 생각이 이 책에 고스란히 담겨 있다. 한 예술가의 혼을 느끼기에 그의 예술적 표현을 음미해 보는 것보다 나은 것은 없으리라 본다.", newCover: "DOK2")
        
        let books = [book1, book2, book3]
        return books
    }
    
    func showLoginPopup(){

        //Practice 1
//        //        let alert = UIAlertController(title: "알림", message: "알림 샘플", preferredStyle: UIAlertControllerStyle.Alert)
//        let alert = UIAlertController(title: "알림", message: "알림 샘플", preferredStyle: .ActionSheet)
//        
//        let cancelAction = UIAlertAction(title: "취소", style: UIAlertActionStyle.Cancel, handler: nil)
//        
//        //let saveAction = UIAlertAction(title: "저장", style: .Destructive, handler: nil)
//        let saveAction = UIAlertAction(title: "저장", style: .Default, handler: nil)
//        
////        let action0 = UIAlertAction(title: "Test", style: .Default, handler: {
////                                                                            (action) in
////                                                                            print("Test")
////        })
//        
//        let action0 = UIAlertAction(title: "Test", style: .Default){
//            (action) in
//            print("Test")
//        }
//        
//        let action1 = UIAlertAction(title: "Facebook", style: .Default, handler: nil)
//        let action2 = UIAlertAction(title: "Twitter", style: .Default, handler: nil)
//        let action3 = UIAlertAction(title: "Kakao", style: .Default, handler: nil)
//        
//        alert.addAction(action0)
//        alert.addAction(action1)
//        alert.addAction(action2)
//        alert.addAction(action3)
//        
//        alert.addAction(cancelAction)
//        alert.addAction(saveAction)
//        
//        self.presentViewController(alert, animated: true, completion: nil)
        
        //Practice 2
        let loginAlert = UIAlertController(title: "로그인", message: "로그인 정보를 입력하세요.", preferredStyle: .Alert
        )
        
        //ID입력 필드 추가
        loginAlert.addTextFieldWithConfigurationHandler({
            (loginTextField:UITextField) in
            loginTextField.placeholder = "아이디"
        })
        
        loginAlert.addTextFieldWithConfigurationHandler({
            (passwordTextField:UITextField) in
            passwordTextField.placeholder = "비밀번호"
            passwordTextField.secureTextEntry = true
        })
        
        let cancelAction = UIAlertAction(title: "취소", style: .Cancel, handler: nil)
        
        let confirmlAction = UIAlertAction(title: "확인", style: .Default){
            (_) in
            let loginId = loginAlert.textFields?[0].text
            let password = loginAlert.textFields?[1].text
            
            if loginId == "test" && password == "1234"{
                print("로그인 성공")
            }else{
                print("로그인 실패")
            }
        }
        
        loginAlert.addAction(cancelAction)
        loginAlert.addAction(confirmlAction)
        
        self.presentViewController(loginAlert, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let detailVC = segue.destinationViewController as? BookDetailViewController
        
        let indexPath = self.tableView.indexPathForCell(sender as! UITableViewCell)
        
        if let vc = detailVC{
            vc.book = myBooks[indexPath!.row]
        }
    }
}