//
//  AudioPlayer.swift
//  RestartApp
//
//  Created by Mindstix on 12/05/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?


func playSound(sound : String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch {
            print("Could Not play the sound")
        }
    }
}
