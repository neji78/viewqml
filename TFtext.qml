import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Rectangle {
    width:300
    height:30
    anchors.top: parent.top
    anchors.topMargin: 20
    anchors.horizontalCenter: parent.horizontalCenter
    property string label_text: "value"
    property string place_: "value"
    readonly property string field_text: fieldtext.text
    property string color_: ""
    RowLayout{
        anchors.fill:parent
        spacing: 5
        Rectangle{
            id:rect_text_
            Layout.fillHeight: true
            Layout.preferredWidth:parent.width/3
            Layout.leftMargin: 5
            color: color_
            Text{
                id: fieldname
                anchors.left: parent.left
                anchors.centerIn: parent
                font.pointSize: 8
                text: label_text
                color:"white"
            }
        }
        TextField{
            id:fieldtext
            Layout.fillHeight: true
            Layout.preferredWidth:parent.width - rect_text_.width
            placeholderText: place_
        }
    }
}
