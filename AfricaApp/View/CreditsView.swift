//
//  CreditsView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 29/04/24.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image(.compass)
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
        Copyrigth © Robert Petras
    All rigth reserved
    Better Apps ❤️‍🔥 Less Code
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        } //vstack
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
}
