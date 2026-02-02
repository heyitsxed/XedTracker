//
//  HomeView.swift
//  XedTracker
//
//  Created by Cedrick on 2/2/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("victory-icon")
                    .resizable()
                    .frame(width: 36, height: 36)
                
                Text("Hey Xed!")
                    .font(.system(size: 18, weight: .semibold))
                
                Spacer()
                
                Image("search-icon")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .padding(.trailing, 15)
                
                Image("profile-icon")
                    .resizable()
                    .frame(width: 21, height: 21)
                
            }
            .padding(.horizontal, 15)
            
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 12)
                    .fill(.black).opacity(0.8)
                    .frame(height: 185)
                
                Image("visa-logo")
                    .resizable()
                    .frame(width: 32, height: 10)
                    .padding(.leading, 16)
                    .padding(.top, 24)
            }
            .padding(.horizontal, 15)
            
            Text("Bills Payment")
                .font(.system(size: 16, weight: .bold))
                .padding(.leading, 15)
                .padding(.top, 20)
            
            HStack(spacing: 30) {
                VStack {
                    Image("electric-icon")
                        .resizable()
                        .frame(width: 48, height: 48)
                    
                    Text("Electricity")
                        .font(.system(size: 10, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                }
                .frame(maxWidth: 52)
                
                VStack {
                    Image("internet-icon")
                        .resizable()
                        .frame(width: 48, height: 48)
                    
                    Text("Wifi")
                        .font(.system(size: 10, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                }
                .frame(maxWidth: 52)
                
                VStack {
                    Image("internet-icon")
                        .resizable()
                        .frame(width: 48, height: 48)
                    
                    Text("Wifi")
                        .font(.system(size: 10, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                }
                .frame(maxWidth: 52)
                
                VStack {
                    Image("electric-icon")
                        .resizable()
                        .frame(width: 48, height: 48)
                    
                    Text("Wifi")
                        .font(.system(size: 10, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                }
                .frame(maxWidth: 52)
                
            }
            .padding(.leading, 15)
            .padding(.top, 16)
            
            HStack {
                Text("Active Loans")
                    .font(.system(size: 16, weight: .bold))
                    .padding(.leading, 15)
                    .padding(.top, 40)
                
                Spacer()
                
                Text("See all")
                    .font(.system(size: 12, weight: .bold))
                    .padding(.top, 40)
                    .padding(.trailing, 15)
            }
            
            HStack {
                ForEach(1..<4, id: \.self) { quantity in
                    VStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(.gray)
                            .frame(width: 90, height: 90)
                        
                        Text(quantity.description)
                    }
                    
                }
            }
            .padding(.top, 15)
            .padding(.horizontal, 15)
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(.black)
                    .frame(height: 75)
                    .padding(.horizontal, 30)
                
                Image(systemName: "plus")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                
            }
            
        }
        .padding(.top, 20)
    }
}

#Preview {
    HomeView()
}
