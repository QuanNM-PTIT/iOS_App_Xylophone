//  ViewController.swift
//  iOS_App_Xylophone
//  Created by Nguyễn Mạnh Quân on 10/08/2022.

import UIKit
import AVFoundation

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    var player: AVAudioPlayer?

    
    @IBAction func keyPressed(_ sender: UIButton)
    {
        sender.alpha = 0.5
        playSound(key: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2)
        {
            sender.alpha = 1
        }
    }
    
    func playSound(key: String)
    {
        guard let path = Bundle.main.path(forResource: key, ofType:"wav")
        else
        {
            return
        }
        let url = URL(fileURLWithPath: path)
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        }
        catch let error
        {
            print(error.localizedDescription)
        }
        /*
            let url = Bundle.main.url(forResource: "C", withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        */
    }
    
}

