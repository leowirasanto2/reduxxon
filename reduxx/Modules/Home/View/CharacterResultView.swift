//
//  CharacterResultView.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 20/10/24.
//

import SwiftUI

struct CharacterResultView: View {
    var c: Character
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(c.name)
                .font(.headline)
            Group {
                Text(c.gender)
                Text("\(c.mass) kg")
                Text("\(c.height) cm")
            }.font(.caption)
        }
        .padding()
        .frame(width: 200, height: 100, alignment: .leading)
        .background(.orange.opacity(0.7))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .gray.opacity(0.2), radius: 10)

    }
}

#Preview {
    CharacterResultView(c: Character.avengerCharacters.first!)
}
