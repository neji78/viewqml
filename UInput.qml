import QtQuick 2.0
import QtQuick.Layouts 1.2

Rectangle {
    id:main_Rect
    anchors.topMargin: 10
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    signal sign_in
    signal sign_up

    Rectangle{
        id:fields_rect
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 5
        height: parent.height - 90
        ColumnLayout{
            id:clay
            spacing: 1
            anchors.fill: parent

            FText{
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                Layout.rightMargin: 10
                label_text: "نام مستعار"
                place_text: "نام کاربری خود را وارد کنید."
                color_:"#d65253"
                color: "#d65253"
            }
            FText{
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                Layout.rightMargin: 10
                label_text: "رمز عبور"
                place_text: "رمز عبور خود را وارد کنید."
                color_:"#d65253"
                color: "#d65253"
            }
        }
    }
    DoubleButton{
        anchors.top: fields_rect.bottom
        anchors.topMargin: 25
        anchors.left: fields_rect.left
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        height: 40
        rightButton: "ثبت نام"
        leftButton: "ورود"
        color_:"#110642"
        onRightButton_clicked: sign_up()
        onLeftButton_clicked: sign_in()

    }
}
