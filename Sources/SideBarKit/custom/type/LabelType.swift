import SwiftUI
/**
 * Labels etc
 * - Fixme: ⚠️️ move to example project?
 */
struct LabelType: RowKind {
   let color: Color
   let title: String
   let action: () -> Void
   // we can rebind from db etc here
   @Binding var tag: Int
}
