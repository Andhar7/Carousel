//
//  SnapView.swift
//  SnapView
//
//  Created by Andrej Kling on 31.07.21.
//

import SwiftUI

struct SnapView: View {
    
    @State private var post : Post = dataImage[0]
    
    @State private var current : Int = 0
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                })
                
                Text("Back")
                 .font(.system(size: 18, weight: .regular, design: .serif))
                 .italic()
            }
            .padding()
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Great World")
             .font(.system(size: 33, weight: .bold, design: .serif))
             .italic()
             .frame(maxWidth: .infinity, alignment: .leading)
             .padding(5)
            
            CustomSelector()
        
            ZStack(alignment: .bottom) {
                
                ScrollView(showsIndicators:false) {
        
                    ZStack  {
                            
                            PagingView(index: $current, maxIndex: dataImage.count - 1 ) {
                                
                                ForEach(dataImage, id:\.self) { item in
                                     
                                    Image(item.postImage)
                                        .resizable()
                                        .frame(width: screen.width - 21, height: screen.height / 1.7)
                                        .cornerRadius(20)
                                    
                                }
                            }
                        }
                        .frame(height: 520 )
                }
                
                HStack {
                    
                    ForEach( 0...(dataImage.count - 1), id:\.self) { item in
                        
                        Circle()
                            .frame(width: current == item ?  12 : 8, height: current == item ?   12 : 8)
                            .foregroundColor(current == item ? .black : .gray)
                    }
                }
                .padding(.bottom, 24)
            }
        }
    }
}

struct SnapView_Previews: PreviewProvider {
    static var previews: some View {
        SnapView()
    }
}
 

