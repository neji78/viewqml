import QtQuick 2.0

Rectangle{
    property string name_: ""
    width: parent.width
    color:"blue"
    signal clicked_;
    Text{
        id:txt
        anchors.centerIn: parent
        text: name_
        font.pointSize: 8
        PropertyAnimation{
            id:enter_text
            target: txt
            property: "font.pointSize"
            to:10
            running:false
        }
        PropertyAnimation{
            id:exit_text
            target: txt
            property: "font.pointSize"
            to:8
            running:false
        }
    }
    MouseArea{
        anchors.fill:parent
        hoverEnabled: true
        onEntered: enter_text.start()
        onExited: exit_text.start()
        onClicked: {
            clicked_()
        }
    }
}
