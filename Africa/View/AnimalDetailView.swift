//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Mary Moreira on 19/10/2022.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - Properties
    
    let animal: Animal
    
    //MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                //HERO IMAGE
                
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                        
                //TITLE
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24))
                
                //HEADLINE
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //GALLERY
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in picture")
                    InsetGallery(animal: animal)
                } //:Group
                .padding(.horizontal)
                //FACTS
                
                //DESCRIPTION
                
                //MAP
                
                //LINK
                
                
                
                Text(animal.name)
            } //: VStack
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        } //: Scroll
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] =  Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
        
    }
}
