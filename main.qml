import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Custom Toolbar Example")

    property var fakeStyle: FakeStyle{}

    color: fakeStyle.blue1

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 0
        spacing: -1

        //
        // The main content frame
        //
        Rectangle {
            id: contentBorder
            anchors.top: parent.parent

            Layout.fillHeight: true
            Layout.fillWidth: true

            color: "transparent"
            border.color: fakeStyle.blueA
            border.width: 2
            radius: 15

            //
            // The main content view where other pages are displayed.
            //
            StackView {
                id: stackView
                visible: true
                anchors.fill: parent
                anchors.margins: 5

                initialItem: Pane {
                    id: pane
                    background: fakeStyle.blue1

                    Label {
                        text: "Hello, world!"
                        color: fakeStyle.blueA
                        anchors.margins: 20
                        anchors.top: parent.top
                        anchors.left: parent.left
                        anchors.right: parent.right
                        horizontalAlignment: Label.AlignHCenter
                        verticalAlignment: Label.AlignVCenter
                        wrapMode: Label.Wrap
                    }
                }
            }
        }

        //
        // The bottom menu toolbar
        //
        Rectangle {
            id: menuBorder
            color: "transparent"
            Layout.preferredHeight: parent.height * 0.15
            Layout.fillWidth: true

            //
            // The custom toolbar for changing page content.
            //
            PageToolbar {
                id: pageToolbar
                stackView: stackView

                model: ListModel {
                    ListElement {
                        pageTitle: "Apple"
                        pageIcon: "images/apple.svg"
                        pageSource: "pages/apple.qml"
                    }
                    ListElement {
                        pageIcon: "images/banana.svg"
                        pageSource: "pages/banana.qml"
                    }
                    ListElement {
                        pageTitle: "Cherry"
                        pageIcon: "images/cherry.svg"
                        pageSource: "pages/cherry.qml"
                    }
                    ListElement {
                        pageTitle: "Durian"
                        pageIcon: "images/durian.svg"
                        pageSource: "pages/durian.qml"
                    }
                    ListElement {
                        pageTitle: "Elderberry"
                        pageSource: "pages/elderberry.qml"
                    }
                }
            }
        }
    }
}
