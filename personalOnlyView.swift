import Foundation
import SwiftUI

@available(iOS 16.0, *)
struct personalOnlyView: View {
    @State private var messageString = "What are the highest and lowest points of your life?"
    @State private var imageName = "personal0"
    @State private var messageNumber = 1
    @State private var imageNumber = 1
    
    @available(iOS 16.0, *)
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color.Background)
                .ignoresSafeArea()
            Image("backgroundTexture")
                .frame(width: 1024, height: 1366)
                .opacity(0.2)
            
            VStack {
                Text("Personal")
                    .font(.system(size:40))
                    .fontWeight(.semibold)
                    .frame(width: 332, height: 48)
                    .foregroundColor(Color.Orange)
                
                
                Image(imageName)
                    .frame(width: 348, height: 320)
                
                Text(messageString)
                    .font(.system(size:32))
                    .multilineTextAlignment(.center)
                    .lineLimit(4)
                    .fontWeight(.regular)
                    .frame(width: 460, height: 200)
                
                Button("Try Again"){
                    let messages = ["What are the highest and lowest points of your life?", "What is your biggest passion? Why?","Where's your life headed?"]
                    
                    messageString = messages[messageNumber]
                    messageNumber += 1
                    if messageNumber == messages.count {
                        messageNumber = 0
                    }
                    
                    imageName = "personal\(imageNumber)"
                    imageNumber = imageNumber + 1
                    if imageNumber > 2 {
                        imageNumber = 0
                    }
                    
                }
                .fontWeight(.semibold)
                .font(.system(size: 32))
                .padding()
                .frame(width: 460, height: 62)
                .background(Color.Orange)
                .foregroundColor(.white)
                .cornerRadius(12)
                
            }
            .frame(width: 540, height: 734)
            .background()
            .cornerRadius(20)
        }
    }
}


@available(iOS 16.0, *)
struct personalOnlyView_Preview: PreviewProvider {
    static var previews: some View {
        personalOnlyView()
    }
}
      

