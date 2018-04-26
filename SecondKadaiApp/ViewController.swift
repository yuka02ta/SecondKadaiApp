//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by KawasumiYuka on 2018/04/26.
//  Copyright © 2018年 y.kawa. All rights reserved.
//

import UIKit

class ViewController:  UIViewController, UITextFieldDelegate{

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var btnResult: UIButton!
    
    var name: String! = nil

    /**
     * 読み込み処理
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtName.delegate = self
    }

    // Dispose of any resources that can be recreated.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /**
     * 結果画面遷移前処理
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resutCtrl: ResultViewController = segue.destination as! ResultViewController
    
        /** 値セット */
        resutCtrl.name = txtName.text
    }
    
    /**
     * 戻ってきた時処理
     */
    @IBAction func unwind(_ sender: UIStoryboardSegue) {
    }
    
    /**
     * 入力UI終了処理
     * ・完了押下
     */
    func textFieldShouldReturn(_ txtName: UITextField) -> Bool {
        
        /** 非表示にする */
        txtName.resignFirstResponder()
        return true
    }
    
    /**
     * 入力UI終了処理
     * ・エリア外押下
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        /** 非表示にする */
        if txtName.isFirstResponder{
            txtName.resignFirstResponder()
        }
    }

}


