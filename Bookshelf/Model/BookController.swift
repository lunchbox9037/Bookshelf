//
//  BookController.swift
//  Bookshelf
//
//  Created by stanley phillips on 1/8/21.
//

import Foundation

class BookController {
    static var books: [Book] {
        let slaughter = Book(name: "Slaughterhouse-Five", author: "Kurt Vonnegut", image: "Slaughterhouse-Five", releaseDate: "1969", info: "Selected by the Modern Library as one of the 100 best novels of all time, Slaughterhouse-Five, an American classic, is one of the world's great antiwar books. Centering on the infamous firebombing of Dresden, Billy Pilgrim's odyssey through time reflects the mythic journey of our own fractured lives as we search for meaning in what we fear most.")
        
        let lastWish = Book(name: "The Last Wish", author: "Andrzej Sapkowski", image: "theLastWish", releaseDate: "1993", info: "Geralt the Witcher—revered and hated—is a man whose magic powers, enhanced by long training and a mysterious elixir, have made him a brilliant fighter and a merciless assassin. Yet he is no ordinary murderer: his targets are the multifarious monsters and vile fiends that ravage the land and attack the innocent.")
        
        let holes = Book(name: "Holes", author: "Louis Sachar", image: "holes", releaseDate: "1998", info: "Stanley Yelnats is under a curse. A curse that began with his no-good-dirty-rotten-pig-stealing-great-great-grandfather and has since followed generations of Yelnats. Now Stanley has been unjustly sent to a boys’ detention center, Camp Green Lake, where the boys build character by spending all day, every day digging holes exactly five feet wide and five feet deep. There is no lake at Camp Green Lake. But there are an awful lot of holes.")
        
        let mobyDick = Book(name: "Moby Dick", author: "Herman Melville", image: "mobyDick", releaseDate: "1851", info: "So Melville wrote of his masterpiece, one of the greatest works of imagination in literary history. In part, Moby-Dick is the story of an eerily compelling madman pursuing an unholy war against a creature as vast and dangerous and unknowable as the sea itself. But more than just a novel of adventure, more than an encyclopaedia of whaling lore and legend, the book can be seen as part of its author's lifelong meditation on America. Written with wonderfully redemptive humour, Moby-Dick is also a profound inquiry into character, faith, and the nature of perception.")

        let treasureIsland = Book(name: "Treasure Island", author: "Robert Louis Stevenson", image: "treasureIsland", releaseDate: "1883", info: "Treasure Island, classic adventure novel by Robert Louis Stevenson, serialized in the magazine Young Folks from October 1881 to January 1882 under the title The Sea-Cook; or, Treasure Island and published in book form in 1883. Although not the first book about pirates, Treasure Island is considered by many to be the best")
        
        let spaceOdyssey = Book(name: "2001: A Space Odyssey", author: "Arthur C. Clarke", image: "spaceOdyssey", releaseDate: "1968", info: "On the Moon, an enigma is uncovered.\n\nSo great are the implications of this discovery that for the first time men are sent out deep into our solar system.\n\nBut long before their destination is reached, things begin to go horribly, inexplicably wrong...\n\nOne of the greatest-selling science fiction novels of our time, this classic book will grip you to the very end.")
        
        return [slaughter, lastWish, holes, mobyDick, treasureIsland, spaceOdyssey]
    }
}
