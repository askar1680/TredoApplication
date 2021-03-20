
import SwiftUI
import Feeds

public struct LoginView: View {
    
    private struct Constants {
        
    }
    
    public init() {}
    
    @State var email: String = ""
    @State var password: String = ""
    @State var hidePassword = true
    @State var hideButtonText = "Show"
    @State var presentingModal = false
    
    public var body: some View {
        NavigationView {
            
            VStack {
                TextField("Email", text: $email).padding().frame(height: 48).background(Color.gray).cornerRadius(4)
                Spacer().frame(minHeight: 10, idealHeight: 10, maxHeight: 10)
                HStack {
                    if hidePassword {
                        SecureField("Password", text: $password).frame(height: 48)
                    } else {
                        TextField("Password", text: $password).frame(height: 48)
                    }
                    
                    Button(hideButtonText) {
                        hidePassword = !hidePassword
                        hideButtonText = hidePassword ? "Show" : "Hide"
                    }
                }.padding().frame(height: 48).background(Color.gray).cornerRadius(4)
                Spacer()
                
                VStack {
                    Button(action: {
                        self.presentingModal = true
                    }) {
                        HStack {
                            Spacer()
                            Text("Log in")
                            Spacer()
                        }.padding()
                    }.foregroundColor(Color.white).background(Color.blue).cornerRadius(8)
                    
                    Button("Forgot your password?") {
                        
                    }.padding(.top)
                }.padding()
            }.padding()
        }.navigationBarTitle(Text("Log in")).sheet(isPresented: $presentingModal, content: {
            FeedsView()
        })
    }
}
