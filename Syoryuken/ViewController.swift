//
//  ViewController.swift
//  Syoryuken
//
//  Created by user on 2022/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var syoryuken: UIImageView!
    
    var imageArraySyoryuken : Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 昇龍拳の画像を配列に格納
        while let syoryukenImage = UIImage(named: "attack1\(imageArraySyoryuken.count+1)") {
            imageArraySyoryuken.append(syoryukenImage)
        }
    }
    
    @IBAction func syoryukenBtn(_ sender: Any) {
        // アニメーションの適用
        syoryuken.animationImages = imageArraySyoryuken
                // 1.5秒間隔
        syoryuken.animationDuration = 1.5
                // 1回繰り返し
        syoryuken.animationRepeatCount = 1
                // アニメーションを開始
        syoryuken.startAnimating()
    }
}

