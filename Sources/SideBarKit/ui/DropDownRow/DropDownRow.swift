import SwiftUI
/**
 * Left text with right down/up arrow button
 * - Abstract: Toggle row with up / down chevron icon etc
 * - Description: The `DropDownRow` is a custom SwiftUI view that displays a row with a title and a toggleable chevron icon. The chevron icon points upwards when the row is in an 'on' state and downwards when it is in an 'off' state. This view is used in various parts of the application where a collapsible list or menu is needed.
 * - Note: Used in `pass-gen-section`, also used in `MenuHeader`
 * - Note: There is also DisclosureGroup -> https://www.devtechie.com/community/public/posts/231528-forms-in-swiftui
 * - Fixme: ⚠️️ Maybe make a tuple with on / off images?
 * - Fixme: ⚠️️ Can all this be a modifier? does it need to be? try it ?
 * - Fixme: ⚠️️ Add names of all classes that uses this
 */
public struct DropDownRow: View {
   /**
    * The title of the DropDownRow.
    * - Description: The 'title' represents the main text displayed on the row. It is typically used to describe the function or purpose of the row to the user.
    */
   public let title: String
   /**
    * The binding variable for the on/off state of the DropDownRow.
    * - Description: The 'isOn' binding variable represents the current state of the DropDownRow. If 'isOn' is true, the DropDownRow is in an 'on' state and the chevron icon points upwards. If 'isOn' is false, the DropDownRow is in an 'off' state and the chevron icon points downwards.
    */
   @Binding public var isOn: Bool
   /**
    * The name of the leading image.
    * - Description: The 'onImage' represents the name of the image displayed when the DropDownRow is in an 'on' state. It typically points upwards to indicate that the row can be collapsed.
    * - Fixme: ⚠️️ Make this static?
    * - Fixme: ⚠️️ Make it possible to set externally?
    */
   public let onImage: String = "chevron.up"
   /**
    * The name of the off image.
    * - Description: The 'offImage' represents the name of the image displayed when the DropDownRow is in an 'off' state. It typically points downwards to indicate that the row can be expanded.
    * - Fixme: ⚠️️ make this static? or move to one
    * - Fixme: ⚠️️ make it possible to set externally?
    */
   public let offImage: String = "chevron.down"
   /**
    * The name of the leading image.
    * - Description: The 'leadingImageName' is an optional string that represents the name of the image displayed at the leading edge of the DropDownRow. If provided, it adds a visual element to the row that can signify additional context or category.
    */
   public let leadingImageName: String?
   /**
    * The style of the text in the DropDownRow
    * - Description: The 'textStyle' represents the style applied to the text in the DropDownRow. It controls the font, size, color, and other visual properties of the text.
    * - Fixme: ⚠️️ why are we storing the textstyle?
    */
   public let textStyle: DropDownTextStyle
   /**
    * Initializes a DropDownRow with a title, toggle state, optional leading image name, and text style.
    * - Description: Initializes a DropDownRow with a title, toggle state, optional leading image name, and text style. This initializer allows you to create a DropDownRow with the specified title, binding for the toggle state, optional leading image, and text style.
    * - Parameters:
    *   - title: The title of the DropDownRow.
    *   - isOn: A binding to a boolean that controls the toggle state of the DropDownRow.
    *   - leadingImageName: The name of the leading image, if any.
    *   - textStyle: The style of the text in the DropDownRow.
    */
   public init(title: String, isOn: Binding<Bool>, leadingImageName: String? = nil, textStyle: DropDownTextStyle = .dropDownTextStyle()) {
      self.title = title
      self._isOn = isOn
      self.leadingImageName = leadingImageName
      self.textStyle = textStyle
   }
}
