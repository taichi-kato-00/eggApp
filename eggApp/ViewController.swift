//
//  ViewController.swift
//  eggApp
//
//  Created by 加藤太一 on 2020/09/05.
//  Copyright © 2020 taichi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = String(count)
        
        dispImage()
        
    }

    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var count :Int = 100

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    var dispImageNum = 0
    func dispImage() {
        let imageArray = ["egg01","egg02","egg03"]
        
        let name = imageArray[dispImageNum]
//        name = egg01
        
        let image = UIImage(named: name)
        
        imageView.image = image
        
    }
    
    @IBAction func bottun(_ sender: Any) {
        
        count = count - 1
        countLabel.text = String(count)
      
//        カウント数に応じたテキストの変更
        if (count == 75){
            textLabel.text = "まだまだ！"
        
        }else if (count == 50){
            textLabel.text = "半分だよ！"
            dispImageNum += 1
            
            
        }else if(count == 25){
            textLabel.text = "もうちょい！"
        
        } else if (count == 0) {textLabel.text = "おめでとう"
            dispImageNum += 1
            
        }
        
        dispImage()
        
    }

}
