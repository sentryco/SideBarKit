import SwiftUI
/**
 * Content
 */
extension DropDownRow {
   /**
    * Consists of Icon, Title, chevron-icon
    * - Description: This is the body of the DropDownRow view. It creates a button with the given title and toggles the 'isOn' state when tapped. The button is styled with an optional leading icon and a trailing icon that changes based on the 'isOn' state. On macOS, vertical padding is added to ensure the entire area is clickable.
    * - Fixme: ⚠️️ Here we should be able to avoid using wrapped etc? because I dont think its needed, remove it while UITesting is running etc
    * - Fixme: ⚠️️ move iconName to let?
    * - Fixme: ⚠️️ consider increasing the size of the chevron icon etc
    */
   public var body: some View {
      Button(title) {
         $isOn.wrappedValue.toggle() // Toggles the value of the isOn binding
      }
      .accessoryButtonStyle( // Applies the accessory button style to the view
         leadingIconName: leadingImageName, // Sets the leading icon name based on the leadingImageName property
         trailingIconName: $isOn.wrappedValue ? onImage : offImage // Toggles between onImage and offImage based on the isOn state
      )
      #if os(macOS) // - Fixme: ⚠️️ we might need this for iOS as well
      .padding(.vertical, Measure.halfMargin) // This must be here so the entire area is hittable, if added to the component it will not be
      #endif
   }
}
