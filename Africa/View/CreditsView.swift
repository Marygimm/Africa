//
//  CreditsView.swift
//  Africa
//
//  Created by Mary Moreira on 20/10/2022.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - Properties
    
    
    //MARK: - Body
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright © Marygimm Branco
    All right reserved
    Better Apps ♡ Less Code
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        } //: Vstack
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
