#ifndef QSIGNUP_H
#define QSIGNUP_H

#include <QObject>
#include <QList>
#include <QMetaObject>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
struct user_data{
    Q_GADGET
    Q_PROPERTY(QString fname MEMBER firstname)
    Q_PROPERTY(QString lname MEMBER lastname)
    Q_PROPERTY(QString uname MEMBER username)
    Q_PROPERTY(QString pword MEMBER password)
    Q_PROPERTY(QString email_ MEMBER email)

public:
    QString firstname;
    QString lastname;
    QString username;
    QString password;
    QString email;
};
Q_DECLARE_METATYPE(user_data)
class QSignUp:public QObject
{
    Q_OBJECT
    Q_PROPERTY(QStringList uidata READ get_ui_data() NOTIFY ui_data_changed())
    Q_PROPERTY(struct user_data userdata READ get_user_data() NOTIFY user_data_changed())
private:
    struct user_data user_dataF;
    QStringList ui_data;

public:
    QSignUp();

public slots:
    struct user_data get_user_data(){return user_dataF;}
    QStringList get_ui_data(){return ui_data;}
    void add_ui_data();
    void set_user_data(struct user_data user_dataG);

signals:
    void ui_data_changed();
    void user_data_changed();

};

#endif // QSIGNUP_H
