import Foundation

public struct SideBarSizing {
   /**
    * The space between rows.
    */
   let rowSpace: CGFloat
   /**
    * The space between groups.
    */
   let groupSpace: CGFloat
   /**
    * The space between the icon and the text.
    */
   let iconHorizontalPadding: CGFloat
   /**
    * The space between the text and the toggle.
    */
   let textHorizontalPadding: CGFloat
   /**
    * The space between the toggle and the text.
    */
   let toggleHorizontalPadding: CGFloat
   /**
    * The space between the tag and the text.
    */
   let tagHorizontalPadding: CGFloat
}
/**
 * Const
 */
extension SideBarSizing {
   /**
    * The default sizing configuration for the sidebar menu.
    */
   public static var defaultSizing: SideBarSizing {
      .init(
         rowSpace: 12,
         groupSpace: 12,
         iconHorizontalPadding: 12,
         textHorizontalPadding: 4,
         toggleHorizontalPadding: 12,
         tagHorizontalPadding: 0
      )
   }
}
