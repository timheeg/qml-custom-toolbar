import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts

ScrollView {

    Rectangle {
        id: wrapper
        anchors.fill: parent
        anchors.margins: 0

        color: fakeStyle.blue1

        ColumnLayout {
            anchors.fill: parent

            Label {
                id: mylabel
                Layout.fillWidth: true

                color: "white"
                topPadding: 20
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Label.Wrap
                text: "This is the elderberry page."
            }

            Image {
                id: myimage
                Layout.fillWidth: true

                smooth: true
                opacity: 1.0
                fillMode: Image.Pad
                verticalAlignment: Image.AlignVCenter
                horizontalAlignment: Image.AlignHCenter
                sourceSize.width: parent.width * 0.6
                source: "../images/elderberries.jpg"
            }
        }
    }
}
