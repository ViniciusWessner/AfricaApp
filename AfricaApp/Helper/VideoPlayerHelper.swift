//
//  VideoPlayerHelper.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 19/04/24.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer? {
    if let path = Bundle.main.path(forResource: fileName, ofType: fileFormat, inDirectory: "Videos") {
        let url = URL(fileURLWithPath: path)
        let player = AVPlayer(url: url)
        print("URL = \(url)")
        print("nome do arquivo = \(fileName + fileFormat)")
        player.play()
        return player
    } else {
        print("Arquivo de vídeo não encontrado. \(fileName + fileFormat)")
        return nil
    }
}

