import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Rectangle {
    width: parent.width - 50
    height:20
    property string label_text: "value"
    property string place_: "value"
    readonly property string field_text: fieldtext.text
    RowLayout{
        anchors.fill:parent
        Rectangle{
            id:rect_text_
            Layout.fillHeight: true
            Layout.preferredWidth:parent.width/2 - 50
            Layout.leftMargin: 5
            Text{
                id: fieldname
                anchors.centerIn: parent
                font.pointSize: 10
                text: label_text
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
