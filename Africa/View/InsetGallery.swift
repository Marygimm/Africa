//
//  InsetGallery.swift
//  Africa
//
//  Created by Mary Moreira on 19/10/2022.
//

import SwiftUI

struct InsetGallery: View {
    //MARK: - Properties
    
    let animal: Animal
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                Image(item)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(12)
                }//: Loop
            }//: HStack
        }//:Scroll
    }
}

struct InsetGallery_Previews: PreviewProvider {
    static let animals: [Animal] =  Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGallery(animal: animals[0])
            .previewLayout(.sizeThatFits)
    }
}
