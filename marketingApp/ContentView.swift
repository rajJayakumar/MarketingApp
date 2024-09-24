import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Home Page
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            // Calendar Page
            CalendarView()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
            
            // Create Page
            CreateView()
                .tabItem {
                    Label("Create", systemImage: "plus.circle")
                }
            
            // Profile Page
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
