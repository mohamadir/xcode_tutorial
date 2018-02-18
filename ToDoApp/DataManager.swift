//
//  DataManager.swift
//  ToDoApp
//
//  Created by snapmac on 2/18/18.
//  Copyright © 2018 snapmac. All rights reserved.
//

import Foundation

public class DataManager{
    
    static fileprivate func getDocumentDirectory () -> URL{
        if let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            return url
            
        }
        else{
            fatalError("unable to access document directory ")
            
        }
    }
    
    
    static func save <T: Encodable> (_ object: T, with filename: String){
            let url = getDocumentDirectory().appendingPathComponent(filename, isDirectory: false)
            let encoder = JSONEncoder()
            
            do{
                let data = try encoder.encode(object)
                if FileManager.default.fileExists(atPath: url.path){
                    try FileManager.default.removeItem(at: url)
                }
                FileManager.default.createFile(atPath: url.path, contents: data, attributes: nil)
                
            }
            catch {
                fatalError(error.localizeDescription)
                
            }
        }
    
    
    
}
