import QtQuick 2.0
import QtQuick.Layouts 1.2

Rectangle {
    id:main_Rect
    anchors.top: parent.top
    anchors.topMargin: 10
    anchors.right: parent.right
    anchors.rightMargin: 10
    height: 300
    color: "red"
    signal sign_in
    signal sign_up
    Rectangle{
        id:fields_rect
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 5
        color:"blue"
        height: parent.height - 90
        ColumnLayout{
            id:clay
            spacing: 1
            anchors.fill: parent

            FText{
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                Layout.rightMargin: 10
                label_text: "نام کاربری"
                place_text: "نام کاربری خود را وارد کنید."
            }
            FText{
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                Layout.rightMargin: 10
                label_text: "رمز عبور"
                place_text: "رمز عبور خود را وارد کنید."
            }
        }
    }
    DoubleButton{
        anchors.top: fields_rect.bottom
        anchors.left: fields_rect.left
        width: 200
        height: 30
        rightButton: "ثبت نام"
        leftButton: "ورود"
        onRightButton_clicked: sign_up()
        onLeftButton_clicked: sign_in()

    }
}
