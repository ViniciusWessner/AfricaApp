//
//  CenterModifier.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 29/04/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
