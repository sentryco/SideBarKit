import SwiftUI
// filter etc, login, payment, securenote, other, wifi
// - Fixme: ⚠️️ rename to FilterType again
// - Fixme: ⚠️️ move to example project?
struct FilteringType: RowKind {
   let icon: String
   let title: String
   let action: () -> Void
   // we can rebind from db etc here
   @Binding var tag: Int
}
