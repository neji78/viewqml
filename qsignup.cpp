#include "qsignup.h"
#include <QDebug>


QSignUp::QSignUp():QObject()
{
    ui_data.append("نام");
    ui_data.append("نام خانوادگی");
    ui_data.append("نام کاربری");
    ui_data.append("رمزعبور");
    ui_data.append("ایمیل");
}

void QSignUp::add_ui_data()
{
    qDebug()<<"set_ui_data";
    emit ui_data_changed();
}

void QSignUp::set_user_data(struct user_data user_dataG)
{
    user_dataF = user_dataG;
    emit user_data_changed();
}
