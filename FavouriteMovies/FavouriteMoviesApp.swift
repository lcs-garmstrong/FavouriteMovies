//
//  FavouriteMoviesApp.swift
//  FavouriteMovies
//
//  Created by Graeme Armstrong on 2023-05-28.
//

import Blackbird
import SwiftUI

@main
struct FavouriteMoviesApp: App {
    var body: some Scene {
        WindowGroup {
            MoviesListView()
            // make database available
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}
