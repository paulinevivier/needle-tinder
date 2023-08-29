//
//  patterns.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 29/08/2023.
//

import Foundation


struct Pattern: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case name
        case creator
        case image
    }
    
    var id = UUID()
    var name: String
    var creator: String
    var image: String
}

class ReadData: ObservableObject  {
    @Published var patterns = [Pattern]()
    
        
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "patterns-data", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let patterns = try? JSONDecoder().decode([Pattern].self, from: data!)
        self.patterns = patterns!
        
    }
     
}
