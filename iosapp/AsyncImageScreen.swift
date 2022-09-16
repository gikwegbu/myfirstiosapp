//
//  AsyncImageScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/09/2022.
//

import SwiftUI

/*
 With AsyncImage, we can asynchronously download image from the internet. There're various options to use in this method, btw, it's an ios 15 feature.
 
 1. The normal AsyncImage; this takes just the url, downloads it and then renders it as it is, meaning the size of the image is set by default as it's original size.
 
 2. The url, content and placeholder AsyncImage; this takes in three params, where the url is the link to the image, the content is the returned image itself, and here you can now custom control the size of the image, add frames, toFit, resizable and all, while the placeholder will be displayed to the users while the download is taking place.
 
 3. The url, content with AsyncImagePhase; this takes just two params, where the url i the link to the image file you wish to download, the content with asyncImagePhase, prepares you on the three status of the image download, i.e, the success, error and empty.
 
 case empty
 No image is loaded.
 case success(Image)
 An image succesfully loaded.
 case failure(Error)
 An image failed to load with an error.
 
 */


//AsyncImage(url: URL(string: "https://example.com/icon.png")) { phase in
//    if let image = phase.image {
//        image // Displays the loaded image.
//    } else if phase.error != nil {
//        Color.red // Indicates an error.
//    } else {
//        Color.blue // Acts as a placeholder.
//    }
//}

struct AsyncImageScreen: View {
    var body: some View {
            
        let url = URL(string: "https://images.pexels.com/photos/9528629/pexels-photo-9528629.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load")
        
//        AsyncImage(url: url)
//        AsyncImage(
//            url: url) { returnedImage in
//                returnedImage
//                    .resizable()
////                    .scaledToFit()
////                    .frame(width: .infinity, height: UIScreen.main.bounds.height)
//                    .frame(width: 200, height: 200)
//                    .cornerRadius(20)
//            } placeholder: {
//                ProgressView()
//            }
        
        AsyncImage(
            url: url) { phase in
                switch phase {
                case .empty: // you can use phase.empty, phase.error, phase.failure
                    ProgressView()
                case .success(let returnedImage):
                    returnedImage
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(15)
                case .failure(let error):
//                    Text(error)
                    Image(systemName: "questionmark")
                        .font(.headline)
                        .foregroundColor(.red)
                default:
                    Image(systemName: "questionmark")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }
            }

    }
}

struct AsyncImageScreen_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageScreen()
    }
}
