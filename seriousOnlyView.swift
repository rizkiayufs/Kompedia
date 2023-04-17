import Foundation
import SwiftUI

@available(iOS 16.0, *)
struct seriousOnlyView: View {
    @State private var messageString = "Should homework be banned?"
    @State private var imageName = "serious0"
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
                Text("Serious")
                    .font(.system(size:40))
                    .fontWeight(.semibold)
                    .frame(width: 332, height: 48)
                    .foregroundColor(Color.Green)
               
                Image(imageName)
                    .frame(width: 348, height: 320)
                
                Text(messageString)
                    .font(.system(size:32))
                    .multilineTextAlignment(.center)
                    .lineLimit(4)
                    .fontWeight(.regular)
                    .frame(width: 460, height: 200)
                
                Button("Try Other Topic"){
                    let messages = ["Should homework be banned?", "Should governments invest in alternative energy sources?","Should all people be vegetarians?", "Should our governments provide loan for all students so that everyone have “similar” start points?", "What do you think about property as investment?"]
                    
                    messageString = messages[messageNumber]
                    messageNumber += 1
                    if messageNumber == messages.count {
                        messageNumber = 0
                    }
                    
                    imageName = "serious\(imageNumber)"
                    imageNumber = imageNumber + 1
                    if imageNumber > 4 {
                        imageNumber = 0
                    }
                }
                        .fontWeight(.semibold)
                        .font(.system(size: 32))
                        .padding()
                        .frame(width: 460, height: 62)
                        .background(Color.Green)
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
struct seriousOnlyView_Preview: PreviewProvider {
    static var previews: some View {
        seriousOnlyView()
    }
}
      

