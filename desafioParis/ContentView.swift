//
//  ContentView.swift
//  desafioParis
//
//  Created by Vitor Gomes on 05/03/23.
//

/* TODO: App is running, but i noticed a strange space between the Ztack and the first VStack same happens between first VStack and second VStack. Tried many ways to reduce to 0 the space but nothing happens, it needs a review in future to know what is causing it.
 */

/* TODO: Again like the other projects, this one was made without any refactor in the code also tested only on iPhone 14 Pro. It needs a refactor also add tests on other devices.
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // MARK: ZStack including: White wallpaper, profile picture and project background color.
        // TODO: Maybe in future this could be changed to a struck for the white wallpaper and use as .background of the profile picture.
        ZStack(alignment: .top) {
            Color("backgroundColor")
                .ignoresSafeArea()
            
            Image("Wallpaper")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 200)
                .ignoresSafeArea()
            
            Image("HappySmile")
                .clipShape(Circle())
                .frame(width: 250, height: 250)
        }
        
        // MARK: First VStack for the movies, including: Title of the VStack as a TextView, and a nested HStack including movies thumbnails.
        VStack(alignment: .leading) {
            Text("Assistidos")
                .padding(.leading, 18)

            HStack(spacing: 8) {
                Image("Movie_Clap_Cell")
                    .resizable()
                    .frame(maxWidth: 130, maxHeight: 200)
                    .cornerRadius(15)

                Image("Movie_Clap_Cell")
                    .resizable()
                    .frame(maxWidth: 130, maxHeight: 200)
                    .cornerRadius(15)

                Image("Movie_Clap_Cell")
                    .resizable()
                    .frame(maxWidth: 130, maxHeight: 200)
                    .cornerRadius(15)
            }
        }.padding(.bottom, 20)
            .background(Color("backgroundColor"))
        
        // MARK: Second VStack for the movies, including: Title of the VStack as a TextView, and a nested HStack including movies thumbnails.
        VStack(alignment: .leading) {
            Text("Na fila")
                .padding(.leading, 18)

            HStack(spacing: 8) {
                Image("Movie_Clap_Cell")
                    .resizable()
                    .frame(maxWidth: 130, maxHeight: 200)
                    .cornerRadius(15)

                Image("Movie_Clap_Cell")
                    .resizable()
                    .frame(maxWidth: 130, maxHeight: 200)
                    .cornerRadius(15)

                Image("Movie_Clap_Cell")
                    .resizable()
                    .frame(maxWidth: 130, maxHeight: 200)
                    .cornerRadius(15)
            }
        }.background(Color("backgroundColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
