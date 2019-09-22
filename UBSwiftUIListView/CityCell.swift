//
//  CityCell.swift
//  UBSwiftUIListView
//
//  Created by Mits on 22/09/19.
//  Copyright © 2019 Ubrain. All rights reserved.
//

import SwiftUI

struct CityCell: View {
    
    var body: some View {
        
        HStack {
            Image(systemName: "photo")
            VStack {
                Text("pokemon.name")
                Text("pokemon.type").foregroundColor(.red)
            }
            Spacer()
        }
        
    }
}

struct CityCell_Previews: PreviewProvider {
    static var previews: some View {
        CityCell()
    }
}
