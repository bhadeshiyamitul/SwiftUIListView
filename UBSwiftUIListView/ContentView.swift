//
//  ContentView.swift
//  UBSwiftUIListView
//
//  Created by Mits on 22/09/19.
//  Copyright © 2019 Ubrain. All rights reserved.
//

import SwiftUI


struct Citys: Identifiable
{
    let id:Int
    let name:String
    let country:String
    let imgPhoto:String
}

struct ContentView: View {
    
    @State var cityList =  [
        
        Citys(id: 0, name: "Mumbai", country: "India", imgPhoto: "mumbai"),
        Citys(id: 1, name: "Bengaluru", country: "India", imgPhoto: "bengaluru"),
        Citys(id: 2, name: "Chennai", country: "India", imgPhoto: "chennai"),
        Citys(id: 3, name: "Delhi", country: "India", imgPhoto: "delhi"),
    ]
    
    var body: some View {
        
        NavigationView {
            List(cityList) { city in
                
                HStack {
                    Image(systemName: "photo")
                    VStack(alignment: .leading, spacing: 0) {
                        Text(city.name)
                        Text(city.country).foregroundColor(.gray)
                    }
                    Spacer()
                }
            }
            .navigationBarTitle(Text("City List"))
            .navigationBarItems(
             trailing: Button(action: addNewCity, label: { Text("+") }))
        }
    }
    
    func addNewCity() {
      if let randomCity = cityList.randomElement() {
        cityList.append(randomCity)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
