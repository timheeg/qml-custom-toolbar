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
                text: "This is the durian page."
            }

            Image {
                id: myimage
                Layout.fillWidth: true

                smooth: true
                opacity: 1.0
                fillMode: Image.Pad
                sourceSize: Qt.size(128, 128)
                verticalAlignment: Image.AlignVCenter
                horizontalAlignment: Image.AlignHCenter
                source: "../images/durian.svg"
            }
        }
    }
}
