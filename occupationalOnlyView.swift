import Foundation
import SwiftUI

@available(iOS 16.0, *)
struct occupationalOnlyView: View {
    @State private var messageString = "Can you share a little about your work experience and how it relates to your current position?"
    @State private var imageName = "occupational0"
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
                Text("Occupational")
                    .font(.system(size:40))
                    .fontWeight(.semibold)
                    .frame(width: 332, height: 48)
                    .foregroundColor(Color.Black)

               
                Image(imageName)
                    .frame(width: 348, height: 320)
                
                Text(messageString)
                    .font(.system(size:32))
                    .multilineTextAlignment(.center)
                    .lineLimit(4)
                    .fontWeight(.regular)
                    .frame(width: 460, height: 200)
                
                Button("Try Other Topic"){
                    let messages = ["Can you share a little about your work experience and how it relates to your current position?", "What are your strengths and weaknesses, and how do you think they will impact your ability to succeed in your current role?","Can you give an example of a time when you had to overcome a challenge at work, and how did you handle it?", "How do you stay organized and prioritize your tasks in a fast-paced work environment?", "What are your long-term career goals, and how do you see your current position fitting into them?"]
                    
                    messageString = messages[messageNumber]
                    messageNumber += 1
                    if messageNumber == messages.count {
                        messageNumber = 0
                    }
                    
                    imageName = "occupational\(imageNumber)"
                    imageNumber = imageNumber + 1
                    if imageNumber > 4 {
                        imageNumber = 0
                    }
                }
                .fontWeight(.semibold)
                .font(.system(size: 32))
                .padding()
                .frame(width: 460, height: 62)
                .background(Color.Black)
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
struct occupationalOnlyView_Preview: PreviewProvider {
    static var previews: some View {
        occupationalOnlyView()
    }
}
      

