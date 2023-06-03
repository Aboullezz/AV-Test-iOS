//
//  ViewController.swift
//  AvTest
//
//  Created by Mohamed Aboullezz on 13/05/2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        playVideo()
    }
    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "ComeBabyCome", ofType: "mp4") else {
            debugPrint("test.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(filePath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}

