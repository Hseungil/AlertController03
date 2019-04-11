//
//  ViewController.swift
//  AlertController03
//
//  Created by D7703_11 on 2019. 4. 11..
//  Copyright © 2019년 D7703_11. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var returnLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func camBurronPressed(_ sender: Any) {
        
        //alert
        let myAlertController = UIAlertController(title: "Camera", message: "Tale a Picture", preferredStyle: .alert)
        
        //UIAlertAction 정의
        let camAction = UIAlertAction(title: "사진촬영", style: .default, handler:{
            (Action:UIAlertAction) -> Void in
                self.returnLable.text = "사진촬영을 스타또"
                self.view.backgroundColor = UIColor.yellow
            }
        )
        
       
        //let libAction = UIAlertAction(title: "사진라이브러리", style: .default,
        //   handler:{
        //    (action:UIAlertAction) -> Void in   //클로저
        //        self.returnLable.text = "사진 라이브러리 ㄱㄱ"
        //        self.view.backgroundColor = UIColor.green
        //    }
        //)
        
        
        //후행클로저 : handler 생략
        let libAction = UIAlertAction(title: "사진라이브러리", style: .default) {
            (action:UIAlertAction) -> Void in   //클로저
            self.returnLable.text = "사진 라이브러리 ㄱㄱ"
            self.view.backgroundColor = UIColor.green
        }
        
        
        
        let saveAction = UIAlertAction(title: "사진저장", style: .default, handler:nil)
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler:nil)
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive, handler:nil)
        
        
        
        
        //UIAlertAction을 UIAlertController에 등록(add)
        myAlertController.addAction(camAction)
        myAlertController.addAction(libAction)
        myAlertController.addAction(saveAction)
        myAlertController.addAction(cancelAction)
        myAlertController.addAction(deleteAction)
        
        self.present(myAlertController, animated: true, completion: nil)
    }
    
}

