//
//  FruitCardView.swift
//  shoppingapp
//
//  Created by iSushant on 23/12/22.
//

import SwiftUI

struct FruitCardView: View {
    
    let fruit: FruitModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(fruit.color))
                .frame(width: 200, height: 170)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    VStack (alignment: .leading, spacing: 5, content: {
                        Text(fruit.name.rawValue.uppercased())
                            .font(.system(.title3))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("$\(String(format: "%g", fruit.price)) each")
                            .font(.system(.title3))
                            .foregroundColor(.black.opacity(0.8))
                        
                        Spacer()
                    })
                    .padding()
                )
                .offset(y: -20)
            
            Image(fruit.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120, alignment: .center)
                .offset(y: 40)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
        }
        .frame(width: 200, height: 220)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: FruitModel(id: 1, name: .apple, price: 1.99, color: "1", image: "apple"))
    }
}
