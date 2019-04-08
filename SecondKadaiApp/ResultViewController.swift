//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by Mika Urakawa on 2019/04/08.
//  Copyright © 2019 kamimi01. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    //2画面目のLabelを、StoryboardでViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!
    
    //受け取るためのプロパティ（変数）を宣言しておく
    var inputText:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //1画面目のViewControllerから遷移するときにprepareForSegueで
        //inputTextの値を新たに代入したのでその値が入るはず
        let result = inputText
        label.text = "こんにちは、\(inputText)さん"
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
