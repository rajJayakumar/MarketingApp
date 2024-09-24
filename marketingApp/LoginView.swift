import SwiftUI

struct LoginView: View {
    @State private var showSignUp = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Existing login page content
                
                // Button to Sign-Up page
                Button("Don't have an account? Sign up") {
                    showSignUp = true
                }
                .font(.footnote)
                .foregroundColor(.blue)
                .padding()
                
                // Navigation to SignUpView
                NavigationLink(destination: SignUpView(), isActive: $showSignUp) {
                    EmptyView()
                }
            }
            .padding()
        }
    }
}
