//
//  CenterModifier.swift
//  Africa
//
//  Created by Mary Moreira on 20/10/2022.
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
