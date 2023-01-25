//
//  CustomLoadingIndicator.swift
//  swiftcoin
//
//  Created by iSushant on 25/01/23.
//

import SwiftUI

struct CustomLoadingIndicator: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(.circular)
            .scaleEffect(x: 1.5, y: 1.5, anchor: .center)
            .frame(width: 80, height: 80, alignment: .center)
            .background(Color(.systemGray4).opacity(0.5))
            .cornerRadius(15)
    }
}

struct CustomLoadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        CustomLoadingIndicator()
    }
}
