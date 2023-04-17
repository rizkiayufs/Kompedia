

import Foundation
import SwiftUI

@available(iOS 16.0, *)
struct funOnlyView: View {
    @State private var messageString = "If Your Best Friend Wrote A Book About You, What Would The Title Be? What About Your Worst Enemy?"
    @State private var imageName = "fun0"
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
                Text("Fun")
                    .font(.system(size:40))
                    .fontWeight(.semibold)
                    .frame(width: 332, height: 48)
                    .foregroundColor(Color.Yellow)
               
                Image(imageName)
                    .frame(width: 348, height: 320)
                
                Text(messageString)
                    .font(.system(size:32))
                    .multilineTextAlignment(.center)
                    .lineLimit(4)
                    .fontWeight(.regular)
                    .frame(width: 460, height: 200)
                

                Button("Try Again"){
                    let messages = ["If Your Best Friend Wrote A Book About You, What Would The Title Be? What About Your Worst Enemy?", "Do you believe that alien is real?", "If you got three wishes from a genie, what would they be?", "If you had to be a Marvel character, who would you choose?", "Would you rather live in the 1800s or the 3000s?"]
                    
                    messageString = messages[messageNumber]
                    messageNumber += 1
                    if messageNumber == messages.count {
                        messageNumber = 0
                    }
                    
                    imageName = "fun\(imageNumber)"
                    imageNumber = imageNumber + 1
                    if imageNumber > 4 {
                        imageNumber = 0
                    }
                }
                        .fontWeight(.semibold)
                        .font(.system(size: 32))
                        .padding()
                        .frame(width: 460, height: 62)
                        .background(Color.Yellow)
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
struct funOnlyView_Preview: PreviewProvider {
    static var previews: some View {
        funOnlyView()
    }
}
      
