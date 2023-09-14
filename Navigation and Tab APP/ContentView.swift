//
//  ContentView.swift
//  Navigation and Tab APP
//
//  Created by Mac Padilla on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                FirstTabView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                SecondTabView()
                    .tabItem {
                        Label("Football", systemImage: "football")
                    }
                
                ThirdTabView()
                    .tabItem {
                        Label("Baseball", systemImage: "baseball")
                    }
                
                ForthTabView()
                    .tabItem {
                        Label("Hockey", systemImage: "hockey.puck")
                    }
            }
        
    }
}

struct FirstTabView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationView {
            VStack{
                Text("Sports Book")
                    .font(.system(size: 55, weight: .bold))
                    .padding(EdgeInsets(top: 40, leading: 10, bottom: 5, trailing: 10))
                NavigationLink("Settings") {
                    DetailPageView()
                }
                .padding()
                
                
                Button("Legal Stuff"){
                    showingSheet = true
                }
                .sheet(isPresented: $showingSheet) {
                    SheetView()
                }
                .padding()
                .navigationTitle("Home")
            }
        }
    }
}

struct SecondTabView: View {
    @State private var Colorado = false
    @State private var ColoradoState = false
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    Text("Spread -23")
                        .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 5))
                    Text("Total Un61")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    Text("Moneyline")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                }
                HStack{
                    //Text("Colorado")
                       // .padding(EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 5))
                       // .font(.system(size: 25, weight: .bold))
                    
                    Button("COLORADO") {
                        Colorado = true
                    }
                    .alert("Yeahhhhhhh I Like That", isPresented: $Colorado) {
                        Button("OK", role: .cancel) {}
                    }
                    
                    
                    Text("-110")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.black, width: 4)
                    Text("-110")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.black, width: 4)
                    Text("-3022")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.black, width: 4)
                        
                            .navigationTitle("Football")
                }
                HStack {
                    Text("Spread +23")
                        .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 5))
                    Text("Total Ov61")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    Text("Moneyline")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                }
                HStack{
                    Button("COLORADO STATE") {
                        ColoradoState = true
                    }
                    .alert("Noooooooooooo", isPresented: $ColoradoState) {
                        Button("OK", role: .cancel) {}
                    }
                    Text("-110")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.green, width: 4)
                    Text("-110")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.green, width: 4)
                    Text("+1155")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.green, width: 4)
                        
                            .navigationTitle("Football")
                }
            }
        }
    }
}





struct ThirdTabView: View {
    @State private var Rockies = false
    @State private var Cardinals = false
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    Text("Spread +2.5")
                        .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 5))
                    Text("Total Ov11")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    Text("Moneyline")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                }
                HStack{
                    //Text("Colorado")
                       // .padding(EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 5))
                       // .font(.system(size: 25, weight: .bold))
                    
                    Button("ROCKIES") {
                        Rockies = true
                    }
                    .alert("Honestly I don't like the Rockies", isPresented: $Rockies) {
                        Button("OK", role: .cancel) {}
                    }
                    
                    
                    Text("-105")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.purple, width: 4)
                    Text("-110")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.purple, width: 4)
                    Text("+220")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.purple, width: 4)
                        
                }
                HStack {
                    Text("Spread -2.5")
                        .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 5))
                    Text("Total Un11")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    Text("Moneyline")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                }
                HStack{
                    Button("CARDINALS") {
                        Cardinals = true
                    }
                    .alert("Don't like them either so", isPresented: $Cardinals) {
                        Button("OK", role: .cancel) {}
                    }
                    Text("-120")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.red, width: 4)
                    Text("-110")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.red, width: 4)
                    Text("-150")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.red, width: 4)
                        
                            .navigationTitle("Baseball")
                }
            }
        }
    }
}

struct ForthTabView: View {
    @State private var Avalanche = false
    @State private var RedWings = false
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    Text("Spread -1.5")
                        .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 5))
                    Text("Total Ov6")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    Text("Moneyline")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                }
                HStack{
                    //Text("Colorado")
                       // .padding(EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 5))
                       // .font(.system(size: 25, weight: .bold))
                    
                    Button("Avalanche") {
                        Avalanche = true
                    }
                    .alert("2022 Stanley Cup Champions!! EASY MONEY", isPresented: $Avalanche) {
                        Button("OK", role: .cancel) {}
                    }
                    
                    
                    Text("-150")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.blue, width: 4)
                    Text("-105")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.blue, width: 4)
                    Text("-250")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.blue, width: 4)
        
                }
                HStack {
                    Text("Spread +1.5")
                        .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 5))
                    Text("Total Un6")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    Text("Moneyline")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                }
                HStack{
                    Button("Red Wings") {
                        RedWings = true
                    }
                    .alert("I hate them, with every bone in my body", isPresented: $RedWings) {
                        Button("OK", role: .cancel) {}
                    }
                    Text("+180")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.red, width: 4)
                    Text("-115")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.red, width: 4)
                    Text("+210")
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .border(.red, width: 4)
                        
                            .navigationTitle("Hockey")
                }
            }
        }
    }
}

struct DetailPageView: View {
    var body: some View {
        NavigationView {
            VStack(content: {
                Text("Theres nothing here, Check back at a later time")
                    .foregroundColor(.blue)
            })
                .padding()
                .navigationTitle("Setting")
        
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("Mac Padilla's Sportsbooks' Terms and Conditions outline the rules and regulations governing their sports betting and online gaming platform. While the specific terms and conditions may change over time, here's a general summary of what you might find in them: Too Long to type.")
            .padding()

        Button("Press to Dismiss") {
            dismiss()
        }
    }
}
         
