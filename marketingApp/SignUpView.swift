import SwiftUI

struct SignUpView: View {
    // State variables to hold the input data
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var signUpMessage: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            // App title
            Text("Sign Up")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 40)
            
            // Username TextField
            TextField("Username", text: $username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            // Email TextField
            TextField("Email", text: $email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
            
            // Password SecureField
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            // Confirm Password SecureField
            SecureField("Confirm Password", text: $confirmPassword)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            // Sign Up button
            Button(action: {
                signUp()
            }) {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            // Display message (for success or error feedback)
            Text(signUpMessage)
                .foregroundColor(.red)
                .padding(.top, 20)
            
            Spacer()
        }
        .padding()
    }
    
    // A simple sign-up function for demonstration purposes
    func signUp() {
        // Simple validation example
        if username.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty {
            signUpMessage = "All fields are required."
        } else if password != confirmPassword {
            signUpMessage = "Passwords do not match."
        } else if !isValidEmail(email) {
            signUpMessage = "Invalid email format."
        } else {
            signUpMessage = "Sign up successful!"
        }
    }
    
    // Email validation function
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
