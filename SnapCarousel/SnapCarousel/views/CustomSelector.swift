//
//  CustomSelector.swift
//  CustomSelector
//
//  Created by Andrej Kling on 31.07.21.
//

import SwiftUI

struct CustomSelector: View {
    
    @State private var selectButton = "Slide Show"
    
    @Namespace var name
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            SegmentedButton(title: "Slide Show", selectButton: $selectButton, name: name)
            
            SegmentedButton(title: "List", selectButton: $selectButton, name: name)
        }
        .background(Color.white)
        .clipShape(Capsule())
        .padding(.horizontal, 21)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: -5, y: -5)

    }
}

struct CustomSelector_Previews: PreviewProvider {
    static var previews: some View {
        CustomSelector()
    }
}

struct SegmentedButton : View {
    
    var title: String
    
    @Binding var selectButton : String
    var name : Namespace.ID
    
    var body: some View {
        
        Button(action: {
            withAnimation(.spring()){
                selectButton = title
            }
        }, label: {
            Text(title)
                .font(.system(size: 18, weight: .regular, design: .serif))
        })
            .foregroundColor(selectButton == title ? .white : .black)
            .padding(.vertical, 6)
            .frame(maxWidth: .infinity)
            .background(
                
                ZStack {
                    
                    if selectButton == title {
                        
                        Color.black
                            .clipShape(Capsule())
                            .matchedGeometryEffect(id: "TAB", in: name)
                    }
                }
               // Color.black.opacity(selectButton == title ? 1 : 0)
            )
           
        
    }
}
