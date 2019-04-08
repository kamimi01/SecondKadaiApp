//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Mika Urakawa on 2019/04/08.
//  Copyright © 2019 kamimi01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //textFieldを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        //segueから遷移先のResutlViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        //遷移先のResutlViewControllerで宣言しているlabelに値を代入して渡す
        //テキストフィールドinputTextの値を取得する
        //疑問1なぜselfが必要なのか
        //疑問2なぜ!がないとエラーになるのか
        resultViewController.inputText = self.textField.text!
        
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue){
        //他の画面からsegueを使って戻ってきた時に呼ばれる
    }
    
}

