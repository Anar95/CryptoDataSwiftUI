//
//  LocalFileManager.swift
//  CryptoData
//
//  Created by Anar Abbas on 13.02.2023.
//

import Foundation
import SwiftUI

class LocalFileManager {
    
    static let instance = LocalFileManager()
    private init (){ }
    
    func saveImage(image: UIImage) {
        guard
            let data = image.pngData(),
            let url = URL(string: "")
        else {return}
        
        do {
            try data.write(to: url)
        } catch let error {
            print("Error saving image. \(error)")
            
        }
        
    }
    
    private func getURLForFolder(folderName: String) -> URL? {
        guard  let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
            
        }
        return url.appendingPathExtension(folderName)
    }
    private func getURLForImage(imageName: String) -> URL? {
        guard  let folderUrl = getURLForFolder(folderName: folderName ) else {
            return nil
        }
        return folderURL.appendingPathComponent(imageName + ".png")
    }
    
}
