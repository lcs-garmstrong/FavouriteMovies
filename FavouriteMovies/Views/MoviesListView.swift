//
//  MoviesListView.swift
//  FavouriteMovies
//
//  Created by Graeme Armstrong on 2023-05-28.
//

import Blackbird
import SwiftUI

struct MoviesListView: View {
    // MARK: Stored properties
    @BlackbirdLiveModels({ db in
        try await Movie.read(from: db)
    }) var movies
    
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            List (movies.results) { currentMovie in
                MovieItemView(name: currentMovie.name, genre: currentMovie.genre, rating: currentMovie.rating)
            }
            .navigationTitle("Favourite Movies")
        }
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
