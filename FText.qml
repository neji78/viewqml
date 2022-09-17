import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Rectangle {
    id:main_rect_
    property string label_text: "non"
    property string place_text: "non"
    property string color_: ""
    readonly property string field_text: fieldtext.text
    RowLayout {
        id: layout
        anchors.fill: main_rect_
        spacing: 5
        FontLoader { id: webFont; source:"qrc:/fonts/FFont/ReemKufiInk-Regular.ttf"}
        Rectangle{
            id:rect_text
            Layout.fillHeight: true
            Layout.preferredWidth:main_rect_.width/2 - 50
            Layout.leftMargin: 5
            color: color_
            Text {
                id: fieldname
                anchors.centerIn: parent
                font.pointSize: 8
                text: label_text
                font.family: webFont.name

            }
        }
        TextField{
            id:fieldtext
            Layout.fillHeight: true
            Layout.preferredWidth:main_rect_.width - rect_text.width
            placeholderText: place_text
        }
    }

}
