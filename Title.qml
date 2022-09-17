import QtQuick 2.6


Rectangle {
    property string title_text:""
    width: parent.width
    height: 40
    FontLoader { id: webFont; source:"qrc:/fonts/FFont/ReemKufiInk-Regular.ttf"}
    Text {
        id: title
        anchors.centerIn: parent
        text: title_text
        font.family: webFont.name
        font.pointSize: 20
    }
}
