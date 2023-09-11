//
//  patterns.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 29/08/2023.
//

import Foundation


struct Pattern: Codable, Identifiable, Hashable {
    enum CodingKeys: CodingKey {
        case name
        case creator
        case image
        case description
    }
    
    var id = UUID()
    var name = "Pattern"
    var creator = "Creator"
    var image = "Pattern"
    var description = "Lorem ipsum dolor sit amet"
}

class ReadData: ObservableObject  {
    @Published var patterns = [Pattern]()
    
        
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "PatternsData", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let patterns = try? JSONDecoder().decode([Pattern].self, from: data!)
        self.patterns = patterns!
        
    }
     
}
