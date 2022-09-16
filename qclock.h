#ifndef QCLOCK_H
#define QCLOCK_H

#include <QObject>
#include <QThread>
#include <QTimer>
#include <QDateTime>

class QClock:public QThread
{
    Q_OBJECT
    Q_PROPERTY(QString time_ READ get_time NOTIFY time_changed)
private:
    QString current_time;
    QString today_data;
public:
    QClock();
    ~QClock();
    void run() override;
public slots:
    QString get_data(){return today_data;}
    QString get_time(){return current_time;}
    void set_time();
    void set_data();
    Q_INVOKABLE void exit_();
signals:
    void time_changed();

};

#endif // QCLOCK_H
