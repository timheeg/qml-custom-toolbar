import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ListView {
    id: pageToolbar
    anchors.fill: parent
    anchors.margins: 3
    orientation: ListView.Horizontal
    spacing: 8

    currentIndex: -1
    Component.onCompleted: currentIndex = 0

    property StackView stackView

    delegate: ToolbarItem {
        model: pageToolbar.model

        height: Math.max(parent.height, 50)
        width: Math.max(parent.height, 50)

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            anchors.margins: 0
            hoverEnabled: true

            onClicked: {
                if (pageToolbar.currentIndex !== index)
                    pageToolbar.currentIndex = index
                    stackView.pop()
                    stackView.push(model.get(index).pageSource)
            }
        }
    }
}
