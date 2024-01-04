//
//  LocationsDetailView.swift
//  ShoppingApp
//
//  Created by Cecilia Chen on 1/3/24.
//

import SwiftUI

struct LocationsDetailView: View {
    
    let locations: [Location]
    
    var body: some View {
        List {
            ForEach(locations, id: \.name) { location in
                /*@START_MENU_TOKEN@*/Text(location.name)/*@END_MENU_TOKEN@*/
            }
        }
        .navigationTitle("Locations")
    }
}

struct LocationsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            LocationsDetailView(locations: foods[0].locations!)
        }
    }
}
