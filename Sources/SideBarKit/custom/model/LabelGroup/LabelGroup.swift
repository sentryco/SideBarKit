import SwiftUI
/**
 * Label group (tags) (custom)
 * - Fixme: ⚠️️ this needs to also have custom type custom(String) where users can create their own labels
 * - Fixme: ⚠️️ move to example project?
 */
enum LabelGroup: GroupKind {
   static let title: String = "Tags"
   case otp, passkeys, work, personal, custom(title: String, color: Color, tagCount: Binding<Int>)
}
