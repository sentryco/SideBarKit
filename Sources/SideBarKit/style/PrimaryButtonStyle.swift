import SwiftUI
/**
 * Primary (blue capsule button)
 * - Description: A button style for creating prominent, eye-catching 
 *                capsule-shaped buttons. These are typically used for 
 *                primary actions in the app. The style applies a 
 *                customizable background color, text color, and 
 *                horizontal padding. This ensures the button stands 
 *                out and is easily tappable.
 * - Note: Used in menu-tags in the side-menu
 * - Note: Alternative name: `BlueCapsuleButton`
 * - Fixme: ⚠️️ Describe this style in words 👈
 * - Fixme: ⚠️️ make the padding edgeInset?
 * - Fixme: ⚠️️ break up this into many files
 */
internal struct PrimaryButtonStyle: ButtonStyle {
   /**
    * The background color of the button.
    */
   internal let backgroundColor: Color
   /**
    * The color of the button text.
    */
   internal let textColor: Color
   /**
    * The horizontal padding to apply to the button.
    */
   internal let padding: CGFloat
   /**
    * - Description: This style creates a primary button with a 
    *               capsule shape, blue background, and white text. 
    *               It applies horizontal padding to the button.
    */
   internal func makeBody(configuration: Configuration) -> some View {
      configuration.label // The label of the button
         .background(backgroundColor) // Sets the background color of the button
         .clipShape(Capsule()) // Clips the button shape to a capsule
         .buttonStyle(.plain) // Resets the button style to plain
         .padding(.horizontal, padding) // Applies horizontal padding to the button
         .foregroundColor(textColor) // Sets the color of the button text
   }
}
/**
 * Solid button
 * - Important: ⚠️️ Only works on button, won't work on view, we can add this as a modifer if view support is needed latr
 * ## Examples:
 * Button("Sign In", action: {})
 *   .buttonStyle(.primary(.black))
 * - Fixme: ⚠️️ add padding?
 */
extension Button {
   /**
    * ## Examples:
    * Button("test").primaryButtonStyle(.blue, .white, 16)
    * - Parameters:
    *   - color: The background color of the button.
    *   - textColor: The color of the button text.
    *   - padding: The horizontal padding to apply to the button.
    * - Returns: A view styled as a primary button with the specified color, text color, and padding.
    */
   @warn_unqualified_access // ref: https://www.hackingwithswift.com/quick-start/swiftui/how-to-make-swiftui-modifiers-safer-to-use-with-warn-unqualified-access
   internal func primaryButtonStyle(color: Color, textColor: Color, padding: CGFloat = 20) -> some View {
      let style = PrimaryButtonStyle(
         backgroundColor: color, // Sets the background color of the button.
         textColor: textColor, // Sets the color of the button text.
         padding: padding // Sets the horizontal padding of the button.
      )
      // Applies the PrimaryButtonStyle to the button with specified color, text color, and padding.
      return self.buttonStyle(style)
   }
}
/**
 * Preview
 */
#Preview(traits: .fixedLayout(width: 400, height: 300)) {
   PreviewContainer {
      Button {
         Swift.print("test")
      } label: {
         Text("Primary button")
            .frame(maxWidth: .infinity)
            .padding()
      }
      .primaryButtonStyle(color: .blue, textColor: .white, padding: 16)
      .padding(24)
      .background(Color.whiteOrBlack.opacity(1))
      #if os(macOS)
      .padding(.horizontal)
      #endif
   }
}
