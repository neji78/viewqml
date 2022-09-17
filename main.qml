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
    color: "#110642"
    FontLoader { id: webFont; source:"qrc:/fonts/FFont/ReemKufiInk-Regular.ttf"}
    Image {
        id: background
        source: "qrc:/pic/src/back.jpg"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        fillMode: Image.PreserveAspectFit
    }
    Rectangle{
        id:main_title_rect
        anchors.left: background.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: page.top
        color: "#110642"
        Text {
            id: main_title
            text: "اتیکا نامه"
            font.family: webFont.name
            font.pointSize: 28
            anchors.centerIn: parent
            color: "white"

        }
    }

    Rectangle{
        id:page
        width:parent.width/3
        height: parent.height/2
        anchors.centerIn: parent
        Title{
            id:win_title
        }
        UInput{
            id:uinput
            Component.onCompleted: win_title.title_text = "دروازه ورود"

            anchors.top:win_title.bottom
            onSign_up: {
                sign_in_pageLoader.source = "/signup/SignupPage.qml"
                page2.visible = true

            }
            onSign_in: {
                //check user does exist
                sign_in_pageLoader.source = "SigninPage.qml"
            }
        }
    }
    Rectangle{
        id:page2
        anchors.top:page.top
        anchors.left:page.left
        anchors.right: parent.right
        anchors.rightMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        visible: false
        Loader {
            id: sign_in_pageLoader
            anchors.fill:parent
        }
    }
    /*
    Logo{
        width: uinput.width
        height: parent.height - uinput.height

    }*/
/*
    Connections {
        target : sign_in_pageLoader.item
        onExit_ : sign_in_pageLoader.source = ""
        ignoreUnknownSignals:true
    }*/

}
