//
//  JokeController.swift
//  4month4homework.4
//
//  Created by акрам on 14/1/23.
//

import Foundation


class JokeController {
    
    private var model: JokeModel!
    
    private var view: ViewController?
    
    init(view: ViewController) {
        self.view = view
        self.model = JokeModel(controller: self)
    }
    
    
    func getJoke() -> Joke {
        let joke = model.getJoke()
        print(joke.setup)
        print(joke.punchline)
        return joke
    }
    
}
