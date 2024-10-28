import SwiftUI
import HybridColor
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
