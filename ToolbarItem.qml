import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ItemDelegate {

    //
    // Reference to the toolbar list model
    //
    property ListModel model

    //
    // Returns the icon for the item
    //
    function iconSource(index) {
        if (typeof model.get(index).pageIcon !== "undefined")
            return model.get(index).pageIcon
        return false
    }

    //
    // Returns the title text for the item
    //
    function itemText(index) {
        if (typeof model.get(index).pageTitle !== "undefined")
            return model.get(index).pageTitle
        return false
    }

    function hasImage(index) {
        return typeof model.get(index).pageIcon !== "undefined"
    }

    //
    // Returns \c true if the item defines title text.
    //
    function hasText(index) {
        return typeof model.get(index).pageTitle !== "undefined"
    }

    Rectangle {
        id: wrapper

        anchors.fill: parent
        anchors.margins: 0

        color: fakeStyle.blue1

        Image {
            id: itemImage
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: itemLabel.top

            visible: hasImage(index)

            opacity: 0.85
            fillMode: Image.Pad
            sourceSize.height: Math.min(width, height)
            sourceSize.width: Math.min(width, height)

            source: iconSource(index)

            scale: mouseArea.containsMouse ? 1.4 : 1.0
            smooth: mouseArea.containsMouse
            z: mouseArea.containsMouse ? 1 : 0
        }

        Label {
            id: itemLabel
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            visible: hasText(index)

            opacity: 0.85
            font.pixelSize: 14
            font.weight: Font.Medium
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            color: "white"

            text: itemText(index)

            font.bold: mouseArea.containsMouse
        }
    }
}
