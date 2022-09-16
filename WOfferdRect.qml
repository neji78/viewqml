import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3

Rectangle {
    anchors.fill:parent
    RowLayout{
        anchors.fill:parent
        Button{
            Layout.preferredHeight: 50
            Layout.preferredWidth: 50
            text:"وارد کن"
        }
        Rectangle{
            Layout.fillHeight: true
            Layout.preferredWidth: 100
            color:"red"
            TextField{
                anchors.fill:parent
                placeholderText: "معنی را وارد کنید"
            }

        }
        Rectangle{
            Layout.fillHeight: true
            Layout.preferredWidth:parent.width - 150
            Text{
                anchors.centerIn: parent
                text: "word"
                font.pointSize: 20
            }

        }
    }

}
