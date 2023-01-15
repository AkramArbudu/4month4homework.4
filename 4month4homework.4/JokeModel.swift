//
//  JokeModel.swift
//  4month4homework.4
//
//  Created by акрам on 14/1/23.
//

import Foundation

struct Joke: Codable {
    var setup: String
    var punchline: String
}

class JokeModel {
    
    private var controller: JokeController?
    
    private let networkLayer = NetworkLayer()
    
    private var joke: Joke?
    
    init(controller: JokeController) {
        self.controller = controller
    }
    
    func getJoke() -> Joke {
        networkLayer.getJoke { fetchedJoke in
            self.joke = fetchedJoke
        }
        
        return joke ?? Joke(setup: "default", punchline: "default")
        
    }
}
