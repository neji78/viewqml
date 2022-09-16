import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import Time 1.0

Rectangle{
    Clock{
        id:clock_
        onTime_changed:clock.label_text = get_time()
        Component.onDestruction:{
            clock_.exit_()
        }
    }

    ColumnLayout{
        anchors.fill:parent
        DoubleText{
            id:date
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height/2
            answer_text: "تاریخ"
            label_text: clock_.get_data()

        }
        DoubleText{
            id:clock
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height/2
            answer_text: "ساعت"
            label_text : clock_.get_time()


        }
    }
}
