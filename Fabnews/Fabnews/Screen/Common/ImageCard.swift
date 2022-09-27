//
//  ImageCard.swift
//  Fabnews
//
//  Created by cybercatzone on 27/09/22.
//

import SwiftUI

struct ImageCard: View{
    var item: News
    
    var body: some View{
        HStack(alignment: .center){
            item.image
                .resizable()
                .frame(width: 100,height: 100)
            cardText.padding(.horizontal,4.0)
        }
        
    }
    
    var cardText: some View{
        VStack(alignment: .leading){
            Text(item.title)
                .font(.headline)
                
            HStack(spacing: 4.0){
                Image(systemName: "calendar")
                Text("Jan 10, 2022")
                    .padding(.trailing, 16.0)
                Image(systemName: "clock.arrow.circlepath")
                Text("10 min read")
            }.padding(.top, 1.0).foregroundColor(.gray)
        }
    }
}

struct ImageCard_Previews: PreviewProvider{
    
    static var previews: some View{
        Group{
            ImageCard(item: news[0])
            ImageCard(item: news[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
