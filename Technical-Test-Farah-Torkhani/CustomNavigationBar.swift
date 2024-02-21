import SwiftUI

struct CustomNavigationBar: View {
    var body: some View {
        NavigationView {
            Text("Content goes here")
                .navigationTitle("Gemstore")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {}) {
                            Image(systemName: "line.horizontal.3")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {}) {
                            Image(systemName: "magnifyingglass")
                        }
                    }
                }
        }
    }
}


#Preview {
    CustomNavigationBar()
}
