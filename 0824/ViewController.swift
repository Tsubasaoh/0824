//
//  ViewController.swift
//  0824
//
//  Created by 王奕功 on 2018/8/24.
//  Copyright © 2018年 王奕功. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
//一段outlet與action的故事
    @IBOutlet weak var luigiImageView: UIImageView!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var meetTextfield: UITextField!
//拉動slider讓圖案往中間靠近
    @IBAction func closetoMeSlider(_ sender: UISlider) {
        luigiImageView.frame.origin.x = CGFloat(156+124*sender.value)
        starImageView.frame.origin.x = CGFloat(508-124*sender.value)
//距離越近速度越快
    if sender.value == Float(0.6) {
        luigiImageView.frame.origin.x = CGFloat(156+30*sender.value)
        starImageView.frame.origin.x = CGFloat(508-30*sender.value)
    }else{
        luigiImageView.frame.origin.x = CGFloat(156+124*sender.value)
        starImageView.frame.origin.x = CGFloat(508-124*sender.value)
//愛要說粗乃
        var speechUtterance = AVSpeechUtterance()
        let synthesizer = AVSpeechSynthesizer()
        if sender.value >= 0.85 {
            speechUtterance = AVSpeechUtterance(string: "Wait~wait for me,dear star")
            speechUtterance.pitchMultiplier = 0.3
            synthesizer.speak(speechUtterance)
//君子愛財取之有道？
        if sender.value == 1.0 {
            meetTextfield.text = "Finally~♥️"
        } else {
            meetTextfield.text = ""
        }
        
    }
    }
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


