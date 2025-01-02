import SwiftUI
import HybridColor
/**
 * Style
 * - Description: Provides a consistent visual style for menu tag text 
 *                elements, adjusting opacity to indicate selection 
 *                state.
 */
extension View {
   /**
    * - Description: Applies a menu tag text style to the view.
    * - Fixme: ⚠️️ add preview?
    * - Fixme: ⚠️️ Use const from ConstLib?
    * - Parameter selected: Indicates if the menu tag is selected.
    * - Returns: A modified view with the menu tag text style applied.
    */
   internal func menuTagTextStyle(selected: Bool) -> some View {
      // let fontColor = Palette.SideBar.Tag.text
      let fontColor = Color.whiteOrBlack.opacity(selected ? 1 : 0.7)
      return self
      // - Fixme: ⚠️️ move to const?
         .padding(.vertical, 4)  // Applies padding to the view
         .padding(.horizontal, 12)
         .font(Font.headline/*Font.menuTag*/) // Sets the font style to headline
         .foregroundColor(fontColor) // Sets the foreground color based on selection
   }
}
