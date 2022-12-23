//
//  DetailsScreenView.swift
//  shoppingapp
//
//  Created by iSushant on 23/12/22.
//

import SwiftUI

struct CustomRoundedRectangle: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path (in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

struct Counter: View {
    
    @State var count: Int = 0
    
    var body: some View {
        HStack (spacing: 25) {
            Button {
                if count < 10 {
                    count = count + 1
                }
            } label: {
                Image(systemName: "plus")
                    .font(.system(.callout))
            }

            Text("\(count)")
                .font(.system(.title))
                .fontWeight(.medium)
            
            Button {
                if count > 0 {
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
                    .font(.system(.callout))
            }
        }
        .foregroundColor(.black)
        .frame(width: 150, height: 45)
        .background(Color("bgColor").opacity(0.1))
        .cornerRadius(10)
    }
}

struct DetailsScreenView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let fruitName : fruit
    
    var fruit: FruitModel {
        get {
            var fruitModel: FruitModel = .init(id: 0, name: .apple, price: 1.99, color: "1", image: "apple")
            
            for fruit in fruits {
                if fruitName == fruit.name {
                    fruitModel = .init(id: fruit.id, name: fruitName, price: fruit.price, color: fruit.color, image: fruit.image)
                }
            }
            
            return fruitModel
        }
    }
    
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
        VStack (alignment: .leading, spacing: 25) {
            Image("bg")
                .resizable()
                .clipShape(CustomRoundedRectangle.init(corners: [.bottomLeft, .bottomRight], radius: 60))
                .edgesIgnoringSafeArea(.top)
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .ignoresSafeArea()
                .overlay(
                    Image(fruit.image)
                        .resizable()
                        .frame(width: 250, height: 250)
                        .offset(y: 60)
                )
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
            
            Spacer()
            
            Text("\(fruit.name.rawValue) - MEDIUM")
                .font(.system(.title))
                .fontWeight(.medium)
                .textCase(.uppercase)
                .padding(.horizontal)
            
            Text("Each (500g -700g)")
                .font(.system(.body))
                .padding(.horizontal)
            
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.system(.body))
                .lineLimit(5)
                .padding(.horizontal)
            
            HStack (spacing: 10) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("bgColor").opacity(0.1))
                    .overlay(
                        Image(systemName: "hourglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35, alignment: .center)
                    )
                    .frame(width: 55, height: 55, alignment: .center)
                
                VStack (alignment: .leading, spacing: 5) {
                    Text("Delivery Time")
                        .font(.system(.title2))
                    
                    Text("25 - 30 Min")
                        .font(.system(.callout))
                }
            }
            .padding(.horizontal)
            
            HStack {
                Text("$\(String(format: "%g", fruit.price))")
                    .font(.system(.title))
                    .fontWeight(.medium)
                
                Spacer()
                
                Counter()
            }
            .padding(.horizontal)
            
            Image("bg")
                .resizable()
                .frame(width: 400, height: 55)
                .cornerRadius(15)
                .overlay(
                    Text("Add to cart")
                        .font(.system(.title2))
                        .fontWeight(.medium)
                )
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.horizontal)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.callout)
                }
            })
        }
    }
}

struct DetailsScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreenView(fruitName: .apple)
    }
}
