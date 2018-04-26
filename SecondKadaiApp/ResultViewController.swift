//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by KawasumiYuka on 2018/04/26.
//  Copyright © 2018年 y.kawa. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var labelHello: UILabel!
    @IBOutlet weak var btnBack: UIButton!
    
    var name: String! = nil
        
    /**
    * 読み込み処理
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var hello: String = String("")
        
        hello.append("こんにちは")
        
        /** 空文字チェック */
        if !name.isEmpty{
            hello.append("、")
            hello.append(name)
            hello.append("さん")
        }
        
        /** 値セット */
        labelHello.text = hello
    }

    // Dispose of any resources that can be recreated.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
