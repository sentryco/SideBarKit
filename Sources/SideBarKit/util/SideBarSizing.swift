import Foundation
/**
 * Represents the sizing configuration for the sidebar menu.
 * - Fixme: ⚠️️ Add public init?
 */
public struct SideBarSizing {
   /**
    * The space between rows.
    */
   internal let rowSpace: CGFloat
   /**
    * The space between title and rows in group
    */
   internal let groupSpace: CGFloat
   /**
    * THe space between each group item in the vstack
    */
   internal let vStackSpace: CGFloat
   
   // remove the bellow. replace with horRowPadding and horRowSpacing
   let horRowPadding: CGFloat
   let horRowSpacing: CGFloat
   /**
    * The space between the icon and the text.
    */
//   internal let iconHorizontalPadding: CGFloat
   /**
    * The space between the text and the toggle.
    */
//   internal let textHorizontalPadding: CGFloat
   /**
    * The space between the toggle and the text.
    */
//   internal let toggleHorizontalPadding: CGFloat
   /**
    * The space between the tag and the text.
    */
//   internal let tagHorizontalPadding: CGFloat
   /**
    * - Fixme: ⚠️️ add doc
    */
   public init(rowSpace: CGFloat, groupSpace: CGFloat, vStackSpace: CGFloat, horRowPadding: CGFloat, horRowSpacing: CGFloat/*, iconHorizontalPadding: CGFloat, textHorizontalPadding: CGFloat, toggleHorizontalPadding: CGFloat, tagHorizontalPadding: CGFloat*/) {
      self.rowSpace = rowSpace
      self.groupSpace = groupSpace
      self.vStackSpace = vStackSpace
      self.horRowPadding = horRowPadding
      self.horRowSpacing = horRowSpacing
//      self.iconHorizontalPadding = iconHorizontalPadding
//      self.textHorizontalPadding = textHorizontalPadding
//      self.toggleHorizontalPadding = toggleHorizontalPadding
//      self.tagHorizontalPadding = tagHorizontalPadding
   }
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
         rowSpace: 12, // - Fixme: ⚠️️ rename to rowVSpace
         groupSpace: 12, // - Fixme: ⚠️️ rename to groupVSpace
         vStackSpace: 12,
         horRowPadding: 12,
         horRowSpacing: 12
//         iconHorizontalPadding: 12, // space between icon and text
//         textHorizontalPadding: 4,
//         toggleHorizontalPadding: 12,
//         tagHorizontalPadding: 0
      )
   }
}
