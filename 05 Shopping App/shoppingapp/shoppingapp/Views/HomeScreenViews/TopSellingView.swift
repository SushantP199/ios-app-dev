//
//  TopSellingView.swift
//  shoppingapp
//
//  Created by iSushant on 23/12/22.
//

import SwiftUI

struct TopSellingView: View {
    
    let fruits: [FruitModel] = [
        .init(id: 0, name: .apple, price: 1.99, color: "1", image: "apple"),
        .init(id: 1, name: .apricot, price: 2.04, color: "2", image: "apricot"),
        .init(id: 2, name: .avocado, price: 1.04, color: "3", image: "avocado"),
        .init(id: 3, name: .banana, price: 2.06, color: "4", image: "banana"),
        .init(id: 4, name: .cherry, price: 3.00, color: "5", image: "cherry"),
        .init(id: 5, name: .dragonfruit, price: 1.04, color: "6", image: "dragonfruit"),
        .init(id: 6, name: .fig, price: 2.00, color: "1", image: "fig"),
        .init(id: 7, name: .orange, price: 1.00, color: "2", image: "orange"),
        .init(id: 8, name: .grapes, price: 2.54, color: "3", image: "grapes"),
        .init(id: 9, name: .raspberry, price: 3.04, color: "4", image: "raspberry"),
        .init(id: 10, name: .papaya, price: 1.04, color: "5", image: "papaya"),
        .init(id: 11, name: .kiwi, price: 2.78, color: "6", image: "kiwi"),
        .init(id: 12, name: .lemon,  price: 2.04, color: "1", image: "lemon"),
        .init(id: 13, name: .blackberry, price: 2.04, color: "2",image: "blackberry"),
        .init(id: 14, name: .mango, price: 1.00, color: "3", image: "mango"),
        .init(id: 15, name: .muskmelon, price: 1.56, color: "4", image: "muskmelon"),
        .init(id: 16, name: .pear, price: 2.04, color: "5", image: "pear"),
        .init(id: 17, name: .pineapple, price: 2.84, color: "6", image: "pineapple"),
        .init(id: 18, name: .plum, price: 1.15, color: "1", image: "plum"),
        .init(id: 19, name: .strawberry, price: 2.35, color: "2", image: "strawbery"),
        .init(id: 20, name: .watermelon, price: 1.64, color: "3", image: "watermelon")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (spacing: 20) {
                ForEach(fruits, id: \.name) { fruit in
                    NavigationLink(destination: DetailsScreenView(fruitName: fruit.name)) {
                        FruitCardView(fruit: fruit)
                    }
                }
            }
        }
    }
}

struct TopSellingView_Previews: PreviewProvider {
    static var previews: some View {
        TopSellingView()
    }
}
