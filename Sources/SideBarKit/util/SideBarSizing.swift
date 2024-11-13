import Foundation
/**
 * - Fixme: ⚠️️ Add doc
 * - Fixme: ⚠️️ Add public init?
 */
public struct SideBarSizing {
   /**
    * The space between rows.
    */
   internal let rowSpace: CGFloat
   /**
    * The space between groups.
    */
   internal let groupSpace: CGFloat
   /**
    * The space between the icon and the text.
    */
   internal let iconHorizontalPadding: CGFloat
   /**
    * The space between the text and the toggle.
    */
   internal let textHorizontalPadding: CGFloat
   /**
    * The space between the toggle and the text.
    */
   internal let toggleHorizontalPadding: CGFloat
   /**
    * The space between the tag and the text.
    */
   internal let tagHorizontalPadding: CGFloat
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
