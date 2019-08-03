//
//  ViewController.swift
//  MemoApp
//
//  Created by VERTEX24 on 2019/08/03.
//  Copyright © 2019 VERTEX24. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    // メモ入力画面
    @IBOutlet weak var MemoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // textViewがUITextViewDelegateを使えるようにする
        MemoTextView.delegate = self
        
        // AppDelegateを参照にするための定数
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        // AppDelegateに定義したlastTetxtを参照し,MemoTextViewに格納する
        MemoTextView.text = appDelegate.lastText
    }

    // 削除ボタン
    @IBAction func deleteButton(_ sender: Any) {
        MemoTextView.text = ""
        
        saveText()
    }
    
    // MemoTextViewになにか入力されたとき動作する
    func textViewDidChange(_ MemoTextView: UITextView) {
        // AppDelegateを呼び出して変数に格納する
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // MemoTextViewに書かれた内容をAppDelegateのlastTextにか更新していく
        appDelegate.lastText = MemoTextView.text
    }
    
    // 端末似データを保存する
    func saveText(){
        // AppDelegateを呼び出して変数に格納する
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // MemoTextViewに書かれた内容をAppDelegateのlastTextにか更新していく
        appDelegate.lastText = MemoTextView.text
    }
}

