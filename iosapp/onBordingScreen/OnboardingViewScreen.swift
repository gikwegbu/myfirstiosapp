//
//  OnboardingViewScreen.swift
//  iosapp
//
//  Created by gikwegbu on 12/09/2022.
//

import SwiftUI

struct OnboardingViewScreen: View {
    // Onboarding Steps: hold option + command + Left/Right to fold and reveal
    /*
     0 - Welcome Screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    
    @State var onboardingState: Int = 0 // This will be used to monitor the status of the user's onboarding process,
    
    // This allows for page transitioning...
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    // Onbording Inputs
    @State var nameTextField: String = ""
    @State var ageField: Double = 18
    @State var genderField: String = ""
    
    // Alert configs
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // AppStorage
    // Made their values optional, so that when the app loads initially, they will be empty...
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    var body: some View {
        ZStack{
         // Content
            switch onboardingState {
                case 0:
                    welcomeSection
                    .transition(transition)
                case 1:
                    addNameSection
                    .transition(transition)
                case 2:
                    addAgeSection
                    .transition(transition)
                case 3:
                    addGenderSection
                    .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
            }
            
        // buttons
            VStack {
                Spacer()
                bottomButton
                
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
        
    
}

struct OnboardingViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewScreen()
        .background(.purple)
    }
}


// MARK: COMPONENTS

//Remember when trying to use an extension, the name of the extension must conform to the name of the View Struct you're trying to extend, else you'll run into error of "Cannot find **** in scope"
extension OnboardingViewScreen {
    private var bottomButton: some View {
        Text(
            onboardingState == 0 ? "Sign Up" :
                onboardingState == 3 ? "Finish" : "Next"
        )

            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white.cornerRadius(10))
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            Text("This is app for finding your match online in this tutorial we are practicing using appStorage and other SwiftUI techniques")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
            
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            // the nameTextField, was declared in the actual struct and not in the extension NB::::
            TextField("Your name here...", text: $nameTextField)
                .font(.headline)
                .padding()
                .background(Color.white.cornerRadius(10))
            Spacer()
            Spacer()
            
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", arguments: [ageField])) years")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(
                value: $ageField,
                in: 18...100,
                step: 1
            )
            .padding(.horizontal, 30)
            .accentColor(.white)
            Spacer()
            Spacer()
        }
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(
                selection: $genderField,
                label:
                    Text("Select Gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(width: .infinity)
                    .background(Color.white.cornerRadius(10))
                ,
                content: {
                    Text("Select Gender")
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")
                }
            )
            
            .accentColor(.white)
            .pickerStyle(MenuPickerStyle())
            Spacer()
            Spacer()
        }
    }
}

// MARK: FUNCTION
extension OnboardingViewScreen {
    
    
    func handleNextButtonPressed() {
            
        // CHECK INPUTS
            switch onboardingState {
            case 1:
                // this means if the name field has a length of 3 or above, break, and run the code after switch, else
                guard nameTextField.count >= 3 else {
                    showAlert(title: "Your name must be at least 3 characters long! 🙃")
                    return
                }
                break // means leave the loop and continue with the rest of the codes after the switch
            case 3 :
                guard genderField.count > 1 else {
                    showAlert(title: "Please select gender before moving forward! 😎")
                    return
                }
                break
            default:
                break
            }
            
        // GO TO NEXT SECTION
            if onboardingState == 3 {
                // Sign user in
                signIn()
            } else {
                withAnimation(.spring()) {
                    onboardingState += 1
                }
            }
    }
    
    func signIn () {
        currentUserName = nameTextField
        currentUserAge = Int(ageField)
        currentUserGender = genderField
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
