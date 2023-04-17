import Foundation
import SwiftUI

@available(iOS 16.0, *)
struct homeView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Rectangle()
                    .fill(Color.Background)
                    .ignoresSafeArea()
                Image("backgroundTexture")
                    .frame(width: 1024, height: 1366)
                    .opacity(0.2)
                
                VStack {
                    Image("homeIllustration")
                        .frame(width: 720, height: 720)
                    
                    NavigationLink(destination: pickTopicView(), label: {
                        Text("Generate Topic")
                            .fontWeight(.semibold)
                            .font(.system(size: 32))
                            .padding()
                            .frame(width: 720, height: 70)
                            .background(Color.Black)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                            .offset(y: 40)
                    })
                    
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
