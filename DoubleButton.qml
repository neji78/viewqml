import QtQuick 2.0
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.0

Rectangle {
    id:twoButton
    property string rightButton: "انصراف"
    property string leftButton: "تایید"
    signal rightButton_clicked;
    signal leftButton_clicked;
    property string color_: ""

    RowLayout{
        anchors.fill: parent
        spacing: 10
        FontLoader { id: webFont; source:"qrc:/fonts/FFont/ReemKufiInk-Regular.ttf"}
        Rectangle{
            id:right_button
            Layout.preferredWidth: twoButton.width/2 - 10
            Layout.fillHeight: true
            color: color_
            Text{
                anchors.centerIn: parent
                text: rightButton
                font.family: webFont.name
                color:"white"
            }
            MouseArea{
                anchors.fill:parent
                hoverEnabled: true
                onClicked: rightButton_clicked()
            }

        }
        Rectangle{
            id:left_button
            Layout.preferredWidth: twoButton.width/2 - 10
            Layout.fillHeight: true
            color: color_
            Text{
                anchors.centerIn: parent
                text: leftButton
                font.family: webFont.name
                color:"white"
            }
            MouseArea{
                anchors.fill:parent
                hoverEnabled: true
                onClicked: leftButton_clicked()
            }
        }
    }

}
