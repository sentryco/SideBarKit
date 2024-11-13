import SwiftUI
/**
 * Const
 * - Fixme: ⚠️️ move to own file. MenuHeaderStyle? 👈
 */
extension MenuHeaderView {
   /**
    * Textstyle for `MenuHeaderView`
    * - Description: Defines the text style for the menu header.
    * - Fixme: ⚠️️ why do we store the textStyle?
    */
   internal static let textStyle: DropDownTextStyle = {
      // let textColor = Palette.SideBar.description
      let textColor: Color = .whiteOrBlack.opacity(1)
      return .dropDownTextStyle(
         textColor: textColor // Sets the text color to white or black with full opacity
      )
   }()
}
