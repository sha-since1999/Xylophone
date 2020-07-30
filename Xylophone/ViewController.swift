//
//  ViewController.swift
//  Xylophone
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha=0.2
        playSound(soundName: sender.currentTitle)
//    sleep(1)      // simple dealy integer time intervals
        
//        for  floating time intevaldelay use this function
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                   //Bring's sender's opacity back up to fully opaque.
                   sender.alpha = 1.0
               }
        

        
    }
    
    func playSound(soundName:String?) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
                
    }
}


