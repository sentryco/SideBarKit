import SwiftUI
import HybridColor
/**
 * Used as the style for list items with chevron arrow
 * - Description: A button style for list items that may include leading 
 *                and trailing icons, such as a chevron arrow, with text 
 *                in between. It is designed to be used in lists where 
 *                additional information or actions are presented with a 
 *                clear visual hierarchy.
 * - Note: Has `left-icon` and `text next to it
 */
internal struct AccessoryButtonStyle: ButtonStyle {
   /**
    * - Description: The name of the leading icon.
    */
   internal let leadingIconName: String?
   /**
    * - Description: The name of the trailing icon.
    */
   internal let trailingIconName: String?
   /**
    * - Description: The font style of the text.
    */
   internal let font: Font
   /**
    * - Description: The color of the text.
    */
   internal let textColor: Color
   /**
    * - Description: The color of icon.
    */
   internal let iconColor: Color
   /**
    * Makes the body of the button.
    * - Description: Makes the body of the button.
    * - Fixme: ⚠️️ add color to icon?
    * - Fixme: ⚠️️ use the pinLeft call etc?
    * - Fixme: ⚠️️ use the iconModifier with precice icon size here
    * - Parameters:
    *   - configuration: The configuration of the button.
    * - Returns: A view representing the body of the button.
    */
   internal func makeBody(configuration: Configuration) -> some View {
      HStack(spacing: 6) { // Creates a horizontal stack with default spacing between elements
         leftIcon // Displays the left icon
         configuration.label // Displays the label of the configuration
            .rowTextStyle( // Applies row text style to the label
               textColor: textColor, // Sets the color of the text.
               padding: leadingIconName == nil ? .zero : 4 // Sets the padding around the text based on the presence of a leading icon.
               /*font: font*/ // - Fixme: ⚠️️ add later again // Sets the font style of the text.
            )
         // new ⚠️️
            .lineLimit(1) // Limits the number of lines of text to 1
         // new ⚠️️
            .frame(maxWidth: .infinity, alignment: .leading) // Aligns the text to the leading edge of the stack.
         Spacer()
         rightIcon // Displays the right icon
      }
      .contentShape(Rectangle()) // makes the entire area hitable
   }
   /**
    * Left icon
    * - Fixme: ⚠️️ move icon size to const?
    */
   fileprivate var leftIcon: some View {
      Image(optionalSystemName: leadingIconName)?
         .iconStyle(
            size: 18,
            padding: 0
            /*color: iconColor*/ // - Fixme: ⚠️️ add this back later
         )
      // .background(isTest ? .blue : .clear) // ⚠️️ debug
      // .padding(.horizontal, Measure.defaultSpacing)
      // .background(isTest ? .pink : .clear) // ⚠️️ debug
   }
   /**
    * Right icon
    * - Fixme: ⚠️️ move icon size to const?
    */
   fileprivate var rightIcon: some View {
      Image(optionalSystemName: trailingIconName)? // Attempts to create an image with the given system name, if it exists.
         .iconStyle(
            size: 12,
            padding: 0,
            color: iconColor
         ) // Sets the size and padding of the icon
         .background(isTest ? .blue : .clear) // ⚠️️ debug
         .padding(.horizontal, 6)
         .background(isTest ? .pink : .clear) // ⚠️️ debug
   }
}
/**
 * Convenient
 */
extension Button {
   /**
    * Applies the accessory button style to the button.
    * - Description: Applies the accessory button style to the button, 
    *                changing its leading and trailing icons, text 
    *                color, and font.
    * - Note: Used by `DropDownRow` and `AccessoryRow`
    * - Parameters:
    *   - leadingIconName: The name of the icon to be displayed on the leading side of the button.
    *   - trailingIconName: The name of the icon to be displayed on the trailing side of the button.
    *   - font: The font style to be used for the button's text. Defaults to Font.headline.
    *   - textColor: The color of the button's text. Defaults to Color.whiteOrBlack.opacity(0.8).
    * - Returns: A view with the applied accessory button style.
    */
   internal func accessoryButtonStyle(leadingIconName: String?, trailingIconName: String?, font: Font = Font.headline, textColor: Color = Color.whiteOrBlack.opacity(0.8), iconColor: Color = Color.whiteOrBlack.opacity(0.8)) -> some View {
      let style: AccessoryButtonStyle = .init(
         leadingIconName: leadingIconName, // The name of the icon to be displayed on the leading side of the button.
         trailingIconName: trailingIconName, // The name of the icon to be displayed on the trailing side of the button.
         font: font, // The font style to be used for the button's text. Defaults to Font.headline.
         textColor: textColor, // The color of the button's text. Defaults to Color.whiteOrBlack.opacity(0.8).
         iconColor: iconColor // Icon color
      )
      return self.buttonStyle(style)
   }
}
/**
 * Preview
 * - Fixme: ⚠️️ add light mode support, I think it has that? still relevant?
 */
#Preview(traits: .fixedLayout(width: 300, height: 200)) {
   PreviewContainer {
      Button("Settings") { Swift.print("ok works!") }
         .accessoryButtonStyle(
            leadingIconName: "heart",
            trailingIconName: "chevron.right",
            textColor: Color.whiteOrBlack.opacity(0.6)
         )
         .padding(24)
      // .background(.gray.opacity(0.2))
         .background(Color.blackOrWhite)
         #if os(macOS)
         .padding(.horizontal)
         #endif
   }
   .environment(\.colorScheme, .dark)
}
