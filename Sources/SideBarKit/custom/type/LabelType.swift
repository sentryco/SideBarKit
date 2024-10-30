import SwiftUI
/**
 * Labels etc
 * - Fixme: ⚠️️ add description
 * - Fixme: ⚠️️ move to example project?
 */
struct LabelType: RowKind {
   /**
    * - Fixme: ⚠️️ add description
    */
   let color: Color
   /**
    * - Fixme: ⚠️️ add description
    */
   let title: String
   /**
    * - Fixme: ⚠️️ add description
    */
   let action: EmptyClosure
   /**
    * - Fixme: ⚠️️ add description
    * - Note: we can rebind from db etc here
    */
   @Binding var tag: Int
}
