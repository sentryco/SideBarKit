import SwiftUI
import HybridColor
/**
 * MenuTagStyle
 * - Description: A style configuration for menu tags that visually distinguishes selected tags from unselected ones using opacity changes. It is used within menus to provide a clear and interactive way to display tag options.
 */
extension Button {
   /**
    * Custom style just for menu-tag, that reuse the bellow etc
    * - Note: See `MenuTagView` for preview
    * - Note: Alternative name: `menuTagTextStyle`
    * - Parameter selected: Indicates if the menu tag is selected
    * - Fixme: ⚠️️ maybe there is a way to mix button styles?
    */
   public func menuTagStyle(selected: Bool) -> some View {
      // let color = Palette.SideBar.Tag.text
      let color = Color.whiteOrBlack.opacity(selected ? 0.2 : 0.1)
      // let textColor = Palette.SideBar.Tag.text
      let textColor = Color.whiteOrBlack.opacity(0.8)
      return self.primaryButtonStyle(
         color: color,
         textColor: textColor,
         padding: 0
      ) // Padding seems to have no effect?
   }
}
/**
 * Text
 * - Note: Needs to work on label and text so we use view
 */
extension View {
   /**
    * Applies a row text style to the view.
    * - Note: See `LabelRow` for preview
    * - Fixme: ⚠️️ Move somewhere else? elaborate
    * - Fixme: ⚠️️ Move defaults into a tuple or struct
    * - Parameters:
    *   - textColor: The color of the text.
    *   - padding: The horizontal padding around the text.
    *   - font: The font style of the text.
    * - Returns: A view with the applied row text style.
    */
   public func rowTextStyle(textColor: Color = Color.whiteOrBlack.opacity(0.8), padding: CGFloat = 4, font: Font = Font.headline) -> some View {
      self
         .font(font) // uses .headline
         .foregroundColor(textColor) // uses Color.whiteOrBlack.opacity(0.8)
         .padding(.horizontal, padding) // uses Measure.quarterMargin
   }
}
/**
 * Preview
 */
#Preview(traits: .fixedLayout(width: 300, height: 300)) {
   PreviewContainer {
      Text("Hello world")
         .rowTextStyle()
         .frame(maxWidth: .infinity)
         .padding(16)
         .background(Color.blackOrWhite.opacity(1))
   }
}
