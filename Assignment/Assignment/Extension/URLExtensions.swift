//
//  URLExtensions.swift
//  Assignment
//
//  Created by Anand Madhav on 29/01/25.
//

import Foundation

extension URLComponents {
    static let httpScheme = "https"
    static let httpHost = "picsum.photos"
    
    static func getUrl(path: String) -> URL? {
        var components = URLComponents()
        components.scheme = URLComponents.httpScheme
        components.host = URLComponents.httpHost
        components.path = path
        
        guard let urlString = components.string else {
            return nil
        }
        return URL(string: urlString)
    }
}
