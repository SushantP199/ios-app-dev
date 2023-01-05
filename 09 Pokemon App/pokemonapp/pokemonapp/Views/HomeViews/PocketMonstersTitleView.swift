//
//  PocketMonstersTitleView.swift
//  pokemonapp
//
//  Created by iSushant on 05/01/23.
//

import SwiftUI

struct PocketMonstersTitleView: View {
    var body: some View {
            HStack (alignment: .center, spacing: 0) {
                Group {
                    Letter(letter: "P", color: .red)

                    Image("pokemon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .center)
                        .rotationEffect(.degrees(-45))
                    
                    Letter(letter: "C", color: .white)

                    Letter(letter: "K", color: .red)

                    Letter(letter: "E", color: .red)

                    Letter(letter: "T", color: .white)
                }
                
                Text(" ")
                
                Group {
                    Letter(letter: "M", color: .red)

                    Letter(letter: "O", color: .red)

                    Letter(letter: "N", color: .red)

                    Letter(letter: "S", color: .white)

                    Letter(letter: "T", color: .white)

                    Letter(letter: "E", color: .white)

                    Letter(letter: "R", color: .white)

                    Letter(letter: "S", color: .white)
                }
            }
            .font(.system(.title))
            .padding()
            .frame(width: .infinity, height: 60, alignment: .center)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    func Letter(letter data: String, color dataColor: Color?) -> Text {
        return Text(data)
            .foregroundColor(dataColor)
            .fontWeight(.bold)
    }
}
