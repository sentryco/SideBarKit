import SwiftUI
import HybridColor
/**
 * Convenient
 * - Description: A view modifier that applies a consistent style 
 *                to dropdown text elements, setting the font and 
 *                color according to the provided parameters.
 * - Note: Used in menu-header-view and drop-down-row
 * - Note: Alt name: `DropDownTextModifier`
 */
internal struct DropDownTextStyle: ViewModifier {
   /**
    * - Description: The color of the text.
    */
   internal let textColor: Color
   /**
    * - Description: The font of the text.
    */
   internal let font: Font // - Fixme: ⚠️️ Make the padding edgeInset?
   /**
    * - Description: Applies the DropDownTextStyle to the content.
    * - Returns: A view with the DropDownTextStyle applied.
    */
   internal func body(content: Content) -> some View {
      content
         .foregroundColor(textColor) // Sets the foreground color of the text to the specified textColor.
         .font(font) // Sets the font style of the text to the specified font.
   }
}
/**
 * Convenient
 * - Description: This extension provides a convenient way to create a 
 *                `DropDownTextStyle`. It uses a static method within 
 *                the `ViewModifier` protocol.
 * - Note: The `where Self == DropDownTextStyle` clause ensures that this method is only available for the `DropDownTextStyle` type.
 */
extension ViewModifier where Self == DropDownTextStyle {
   /**
    * - Description: Creates a DropDownTextStyle with the specified textColor and font.
    * - Returns: A DropDownTextStyle with the specified textColor and font.
    * - Fixme: ⚠️️ use .whiteBlack color
    * - Parameters:
    *   - textColor: The color of the text. Defaults to a constant color black for light mode and white for dark mode.
    *   - font: The font of the text. Defaults to the body font.
    */
   internal static func dropDownTextStyle(textColor: Color = .init(light: .black, dark: .white), font: Font = .body) -> Self {
      .init(
         textColor: textColor, // Sets the text color of the DropDownTextStyle to the specified textColor.
         font: font // Sets the font style of the DropDownTextStyle to the specified font.
      )
   }
}
/**
 * Convenient
 */
extension View {
   /**
    * - Description: Applies the DropDownTextStyle to the view.
    * - Returns: A view with the DropDownTextStyle applied.
    */
   internal var dropDownTextStyle: some View {
      self.modifier(.dropDownTextStyle())
   }
}
/**
 * Preview
 */
#Preview(traits: .fixedLayout(width: 300, height: 300)) {
   PreviewContainer {
      let brand = "Apple"
      Text(brand)
         .dropDownTextStyle
         .padding()
         .frame(maxWidth: .infinity)
         .background(Color.blackOrWhite.opacity(1))
         #if os(macOS)
         .padding(.horizontal)
         #endif
   }
   .environment(\.colorScheme, .dark)
}
