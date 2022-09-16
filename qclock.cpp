#include "qclock.h"
#include <QDebug>

QClock::QClock():QThread()
{
    set_time();
    set_data();
    if(!isRunning())
        start();
}

QClock::~QClock()
{
    quit();
}

void QClock::run()
{
    QTimer *timer = new QTimer;
    timer->setInterval(500);
    QObject::connect(timer,SIGNAL(timeout()),this,SLOT(set_time()));
    timer->start();
    exec();
}

void QClock::set_time()
{
    current_time = QDateTime::currentDateTime().time().toString();
    emit time_changed();
    //qDebug()<<current_time;
}

void QClock::set_data()
{
    today_data = QDateTime::currentDateTime().date().toString();
}


void QClock::exit_()
{
    qDebug()<<"is here";
    quit();
}
