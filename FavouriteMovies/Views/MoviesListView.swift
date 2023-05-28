//
//  MoviesListView.swift
//  FavouriteMovies
//
//  Created by Graeme Armstrong on 2023-05-28.
//

import SwiftUI

struct MoviesListView: View {
    var body: some View {
        NavigationView {
            List {
                MovieItemView(name: "E.T. the Extra-Terrestrial", genre: "Science Fiction", rating: 4)
                
                MovieItemView(name: "Ferris Bueller's Day Off", genre: "Comedy", rating: 4)
                
                MovieItemView(name: "Ghostbusters", genre: "Comedy", rating: 5)
            }
            .navigationTitle("Favourite Movies")
        }
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
