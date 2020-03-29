//
//  FlavorStore.swift
//  LemonIceKingIOS
//
//  Created by Cindy Michalowski on 3/21/20.
//  Copyright © 2020 Cindy Michalowski. All rights reserved.
//

class FlavorStore {
    
    var flavors = [
        "Spumoni": "ice_spumoni",
        "Root Beer": "ice_root_beer",
        "Lemon Lime": "ice_lemon_lime",
        "Oreo": "ice_oreo",
        "Cool Blue": "ice_cool_blue",
        "Lemon": "ice_lemon"
//        "Lime",
//        "Mint Chip",
//        "Cotton Candy",
//        "Pineapple",
//        "Raspberry",
//        "Rainbow",
//        "Cherry",
//        "Mango",
//        "Licorice",
//        "Apple",
//        "Bubble Gum",
//        "Strawberry",
//        "Blueberry",
//        "Pistachio",
//        "Pina Colada",
//        "Rum Raisin",
//        "Orange",
//        "Tangerine",
//        "Vanilla",
//        "Sour Apple",
//        "Grape",
//        "Banana",
//        "Coconut",
//        "Peach",
//        "Cantaloupe",
//        "Mint",
//        "Fruit Cocktail",
//        "Vanilla Chip",
//        "Chocolate",
//        "Watermelon",
//        "Almond",
//        "Orange-Vanilla",
//        "Cherry-Vanilla",
//        "Peanut Butter",
//        "Coffee"
        ].map { Flavor(name: $0, imageName: $1) }
}
