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

    @IBAction func keyCPressed(_ sender: UIButton)
    {
        playSound()
    }
    
    func playSound()
    {
        guard let path = Bundle.main.path(forResource: "C", ofType:"wav")
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
    }
    
}

