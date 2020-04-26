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
        "Lemon": "ice_lemon",
        "Lime": "ice_lime",
        "Mint Chip": "ice_mint_chip",
        "Cotton Candy": "ice_cotton_candy",
        "Pineapple": "ice_pineapple",
        "Raspberry": "ice_raspberry",
        "Rainbow": "ice_rainbow",
        "Strawberry Banana": "ice_strawberry_banana",
        "Cherry": "ice_cherry",
        "Mango": "ice_mango",
        "Licorice": "ice_licorice",
        "Apple": "ice_apple",
        "Bubble Gum": "ice_bubble_gum",
        "Strawberry": "ice_strawberry",
        "Blueberry": "ice_blueberry",
        "Pistachio": "ice_pistachio",
        "Pina Colada": "ice_pina_colada",
        "Rum Raisin": "ice_rum_raisin",
        "Orange": "ice_orange",
        "Tangerine": "ice_tangerine",
        "Vanilla": "ice_vanilla",
        "Sour Apple": "ice_sour_apple",
        "Grape": "ice_grape",
        "Banana": "ice_banana",
        "Coconut": "ice_coconut",
        "Peach": "ice_peach",
        "Cantaloupe": "ice_cantaloupe",
        "Mint": "ice_mint",
        "Fruit Cocktail": "ice_fruit_cocktail",
        "Vanilla Chip": "ice_vanilla_chip",
        "Chocolate": "ice_chocolate",
        "Watermelon": "ice_watermelon",
        "Almond": "ice_almond",
        "Orange-Vanilla": "ice_orange_vanilla",
        "Cherry-Vanilla": "ice_cherry_vanilla",
        "Peanut Butter": "ice_peanut_butter",
        "Coffee": "ice_coffee"
        ].map { Flavor(name: $0, imageName: $1) }
}
