//
//  ViewController.swift
//  Light
//
//  Created by Andrey on 05.11.2018.
//  Copyright © 2018 Andrey. All rights reserved.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var lightSend = true
    
    @IBAction func LightBatton(_ sender: UIButton) {
        lightSend = !lightSend
        updeteWiew()
    }
    
    func updeteWiew()  {
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        if let dev = device, dev.hasTorch {
            do {
             try dev.lockForConfiguration()
                dev.torchMode = lightSend ? .on : .off
            } catch {
                print("Error")
            }
            
            
        }
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

