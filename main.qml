import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import QtQuick.Controls

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: contentArea

        anchors.fill: parent

        // Side bar for page selection
        Rectangle{
            id: sideBar
            visible: true

            anchors {
                top: parent.top
                left: parent.left
            }
            height: parent.height
            width: 70

            color: "black"


        }

        // for settings and more
        Drawer {
            id: drawer
            width: 0.66 * window.width
            height: window.height

            Label {
                text: "Content goes here!"
                anchors.centerIn: parent
            }
        }


        // main pages
        Loader {
            id: pageLoader
            source: Qt.resolvedUrl("qml/pages/main_page.qml")

            anchors {
                top: parent.top
                right: parent.right
                left: sideBar.right
            }
            height: parent.height
        }

    }

}
