//
//  FlavorStore.swift
//  LemonIceKingIOS
//
//  Created by Cindy Michalowski on 3/21/20.
//  Copyright © 2020 Cindy Michalowski. All rights reserved.
//

class FlavorStore {
    
    var flavors = [
        "Spumoni",
        "Root Beer",
        "Lemon Lime",
        "Oreo",
        "Cool Blue",
        "Lemon",
        "Lime",
        "Mint Chip",
        "Cotton Candy",
        "Pineapple",
        "Raspberry",
        "Rainbow",
        "Cherry",
        "Mango",
        "Licorice",
        "Apple",
        "Bubble Gum",
        "Strawberry",
        "Blueberry",
        "Pistachio",
        "Pina Colada",
        "Rum Raisin",
        "Orange",
        "Tangerine",
        "Vanilla",
        "Sour Apple",
        "Grape",
        "Banana",
        "Coconut",
        "Peach",
        "Cantaloupe",
        "Mint",
        "Fruit Cocktail",
        "Vanilla Chip",
        "Chocolate",
        "Watermelon",
        "Almond",
        "Orange-Vanilla",
        "Cherry-Vanilla",
        "Peanut Butter",
        "Coffee"
        ].map { Flavor(name: $0) }
}
