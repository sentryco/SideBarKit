import SwiftUI
/**
 * Filter etc, login, payment, securenote, other, wifi
 * - Fixme: ⚠️️ rename to FilterType again
 * - Fixme: ⚠️️ move to example project?
 */
struct FilteringType: RowKind {
   /**
    * - Fixme: ⚠️️ add description
    */
   let icon: String
   /**
    * - Fixme: ⚠️️ add description
    */
   let title: String
   /**
    * - Fixme: ⚠️️ add description
    */
   let action: EmptyClosure
   /**
    * - Note: We can rebind from db etc here
    */
   @Binding var tag: Int
}
