//
//  ListNews.swift
//  Fabnews
//
//  Created by cybercatzone on 27/09/22.
//

import SwiftUI

struct ListNews: View {
    var body: some View {
        VStack{
            header
            tabMenu
            listData
        }

    }
    
    var header: some View{
        VStack(alignment: .leading){
            Text("Breaking News")
                .font(.largeTitle)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)
                .padding([.top, .leading, .trailing])
            Image("boeing737500")
                .resizable(resizingMode: .stretch)
                .padding(.horizontal)
        }
    }
    
    var tabMenu: some View{
        HStack(){
            Text("All")
                .foregroundColor(Color.blue)
            Text("Internation")
            Text("Media")
            Text("Magazine")
        }
        .padding(.top)
    }
    
    var listData: some View{
        List{
            ImageCard(item: news[0])
            ImageCard(item: news[1])
        }
        
    }
}

struct ListNews_Previews: PreviewProvider {
    static var previews: some View {
        ListNews()
    }
}
