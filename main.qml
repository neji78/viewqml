import QtQuick 2.12
import QtQuick.Window 2.3
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Window {
    id: win
    visible: true
    width: 640
    height: 480
    title: qsTr("اتیکا")
    Poem{
        id:poem
        anchors.right: uinput.left

    }
    UInput{
        id:uinput
        width: 400
        onSign_up: {
            sign_in_pageLoader.source = "SignupPage.qml"

        }
        onSign_in: {
            //check user does exist
            sign_in_pageLoader.source = "SigninPage.qml"
        }
    }
    Logo{
        width: uinput.width
        height: parent.height - uinput.height

    }
    Loader {
        id: sign_in_pageLoader
        anchors.fill:parent
    }
    Connections {
        target : sign_in_pageLoader.item
        onExit_ : sign_in_pageLoader.source = ""
        ignoreUnknownSignals:true
    }

}
