import Foundation

public struct SideBarSizing {
   /**
    * - Fixme: ⚠️️ add doc
    */
   let rowSpace: CGFloat
   /**
    * - Fixme: ⚠️️ add doc
    */
   let groupSpace: CGFloat
   /**
    * - Fixme: ⚠️️ add doc
    */
   let iconHorizontalPadding: CGFloat
   /**
    * - Fixme: ⚠️️ add doc
    */
   let textHorizontalPadding: CGFloat
   /**
    * - Fixme: ⚠️️ add doc
    * - Fixme: ⚠️️ this is not added yet. add it later
    */
   let toggleHorizontalPadding: CGFloat
   /**
    * - Fixme: ⚠️️ add doc
    */
   let tagHorizontalPadding: CGFloat
}
/**
 * Const
 */
extension SideBarSizing {
   /**
    * - Fixme: ⚠️️ add doc
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
