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
    
    func saveImage(image: UIImage, imageName: String, folderName: String) {
        guard
            let data = image.pngData(),
            let url = getURLForImage(imageName: imageName, folderName: folderName )
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
    private func getURLForImage(imageName: String, folderName: String) -> URL? {
        guard  let folderUrl = getURLForFolder(folderName: folderName ) else {
            return nil
        }
        return folderUrl.appendingPathExtension(imageName + ".png")
    }
    
}
