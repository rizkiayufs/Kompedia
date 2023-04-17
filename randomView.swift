import Foundation
import SwiftUI

@available(iOS 16.0, *)
struct randomView: View {

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

               
                Image("personal1")
                    .frame(width: 348, height: 320)
                
                Text("What are the highest and lowest points of your life?")
                    .font(.system(size:32))
                    .multilineTextAlignment(.center)
                    .lineLimit(4)
                    .fontWeight(.regular)
                    .frame(width: 460, height: 200)
                
                    Text("Take the Topic")
                        .fontWeight(.semibold)
                        .font(.system(size: 32))
                        .padding()
                        .frame(width: 460, height: 62)
                        .background(Color.Orange)
                        .foregroundColor(.white)
                        .cornerRadius(12)
             
                    Text("Try Again")
                        .fontWeight(.semibold)
                        .font(.system(size: 32))
                        .padding()
                        .frame(width: 460, height: 62)
                        .background(Color.white)
                        .foregroundColor(.Orange)
                        .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.Orange, style: StrokeStyle(lineWidth: 2)))
                        .offset(y: 20)
                    
                }
            .frame(width: 540, height: 860)
            .background()
            .cornerRadius(20)
            }
        }
    }

@available(iOS 16.0, *)
struct randomView_Preview: PreviewProvider {
    static var previews: some View {
        randomView()
    }
}
      

