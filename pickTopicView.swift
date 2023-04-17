//
//  pickTopicView.swift
//  Kompedia
//
//  Created by Rizki Ayu Fitri on 16/04/23.
//

import Foundation
import SwiftUI

@available(iOS 16.0, *)
struct pickTopicView: View {
    @available(iOS 16.0, *)
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.Background)
                .ignoresSafeArea()
            Image("backgroundTexture")
                .frame(width: 1024, height: 1366)
                .opacity(0.2)
            
            VStack(alignment: .center) {
                HStack{
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.Black, lineWidth: 5)
                            .frame(width: 412, height: 366)
                            .background(Color.white)
                        
                        VStack{
                            Text("Random")
                                .font(.system(size:40))
                                .fontWeight(.semibold)
                                .frame(width: 332, height: 48)
                            Text("No need to think, just pick random topic here!")
                                .multilineTextAlignment(.center)
                                .lineLimit(4)
                                .font(.system(size:28))
                                .frame(width: 332, height: 160)
                            NavigationLink(destination: randomView(), label: {
                                Text("Generate")
                                    .padding()
                                    .frame(width: 172, height: 54)
                                    .background(Color.Black)
                                    .font(.system(size: 32))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .cornerRadius(12)
                            })
                        }
                        
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.Orange, lineWidth: 5)
                            .frame(width: 412, height: 366)
                            .background(Color.white)
                        
                        VStack{
                            Text("Personal")
                                .font(.system(size:40))
                                .fontWeight(.semibold)
                                .frame(width: 332, height: 48)
                            Text("Want to talk about your feeling or experiences? Here’s personal topic you can try!")
                                .multilineTextAlignment(.center)
                                .lineLimit(4)
                                .font(.system(size:28))
                                .frame(width: 332, height: 160)
                            NavigationLink(destination: personalOnlyView(), label: {
                            Text("Generate")
                                .padding()
                                .frame(width: 172, height: 54)
                                .background(Color.Orange)
                                .font(.system(size: 32))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                        })
                    }
                }
                    .offset(x: 40)
                    }
                HStack{
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.Yellow, lineWidth: 5)
                            .frame(width: 412, height: 366)
                            .background(Color.white)
                        
                        VStack{
                            Text("Fun")
                                .font(.system(size:40))
                                .fontWeight(.semibold)
                                .frame(width: 332, height: 48)
                            Text("Practice your casual communication skill and have fun with your friends using this topic!")
                                .multilineTextAlignment(.center)
                                .lineLimit(4)
                                .font(.system(size:28))
                                .frame(width: 332, height: 160)
                            NavigationLink(destination: funOnlyView(), label: {
                                Text("Generate")
                                    .padding()
                                    .frame(width: 172, height: 54)
                                    .background(Color.Yellow)
                                    .font(.system(size: 32))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .cornerRadius(12)
                            })
                        }
                    }
                            
                            
                    ZStack {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.Green, lineWidth: 5)
                                    .frame(width: 412, height: 366)
                                    .background(Color.white)
                                
                        VStack{
                            Text("Serious")
                                .font(.system(size:40))
                                .fontWeight(.semibold)
                                .frame(width: 332, height: 48)
                            Text("Ready to discuss serious things to boost your public speaking skill? Here’s the topic!")
                                .multilineTextAlignment(.center)
                                .lineLimit(4)
                                .font(.system(size:28))
                                .frame(width: 332, height: 160)
                            NavigationLink(destination: seriousOnlyView(), label: {
                                Text("Generate")
                                    .padding()
                                    .frame(width: 172, height: 54)
                                    .background(Color.Green)
                                    .font(.system(size: 32))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .cornerRadius(12)
                            })
                        }
                    }
                        .offset(x: 40)
                        }
                    .offset(y: 40)
                    }
                    
                }
            }
        }

        
@available(iOS 16.0, *)
struct pickTopicView_Preview: PreviewProvider {
            static var previews: some View {
                pickTopicView()
            }
        }
