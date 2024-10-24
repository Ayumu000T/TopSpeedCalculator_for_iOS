import SwiftUI

struct CustomButton: View {
    var title: String
    var backgroundColor: Color
    var action: () -> Void
    var maxWidth: CGFloat?
    var height: CGFloat = 50

    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .font(.headline)
                .foregroundColor(Color.white)
                .padding()
                .frame(maxWidth: maxWidth ?? .infinity, maxHeight: height) //widthは指定しなければnil、heightは50
                .background(backgroundColor)
                .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}
