import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Rectangle {
    property string label_text:"one"
    property string answer_text:"two"
    RowLayout{
        spacing: 1
        anchors.fill:parent
        Rectangle{
            Layout.fillHeight: true
            Layout.preferredWidth:parent.width/2
            Text{
                anchors.centerIn: parent
                text:label_text
                font.pointSize:8
            }
        }
        Rectangle{
            Layout.fillHeight: true
            Layout.preferredWidth:parent.width/2
            Text {
                anchors.centerIn: parent
                text: answer_text
                font.pointSize: 8
            }
        }
    }

}
