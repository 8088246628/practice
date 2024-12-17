//
//  NetworkManager.swift
//  practise
//
//  Created by ATEU on 16/12/24.
//
import Foundation
class NetworkManager {
    func ferchData() {
        if   let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                
            }
        }
            
    }
}
