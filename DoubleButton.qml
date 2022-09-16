import QtQuick 2.0
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.0

Rectangle {
    id:twoButton
    property string rightButton: "انصراف"
    property string leftButton: "تایید"
    signal rightButton_clicked;
    signal leftButton_clicked;

    RowLayout{
        anchors.fill: parent
        Button{
            id:right_button
            Layout.preferredWidth: twoButton.width/2
            Layout.fillHeight: true
            text: rightButton
            onClicked: rightButton_clicked()
        }
        Button{
            id:left_button
            Layout.preferredWidth: twoButton.width/2
            Layout.fillHeight: true
            text: leftButton
            onClicked: leftButton_clicked()
        }
    }

}
