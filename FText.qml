import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Rectangle {
    id:main_rect
    property string label_text: "non"
    property string place_text: "non"
    readonly property string field_text: fieldtext.text
    color: "black"
    RowLayout {
        id: layout
        anchors.fill: main_rect
        spacing: 5

        Rectangle{
            id:rect_text
            Layout.fillHeight: true
            Layout.preferredWidth:main_rect.width/2 - 50
            Layout.leftMargin: 5
            Text {
                id: fieldname
                anchors.centerIn: parent
                font.pointSize: 10
                text: label_text

            }
        }
        TextField{
            id:fieldtext
            Layout.fillHeight: true
            Layout.preferredWidth:main_rect.width - rect_text.width
            placeholderText: place_text
        }
    }

}
