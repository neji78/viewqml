#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "qclock.h"
#include "qsignup.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    qmlRegisterType<QClock>("Time",1,0,"Clock");
    qRegisterMetaType<user_data>();
    qmlRegisterType<QSignUp>("Sign_Up",1,0,"SUP");
    QQmlApplicationEngine engine;
    //engine.rootContext()->setContextProperty("Clock",clock);
    const QUrl url(QStringLiteral("qrc:/main/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    return app.exec();
}
