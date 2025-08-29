#include "water_hammer_simulation.h"
#include <QApplication>
#include <QTranslator>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QApplication::setApplicationName("Water Hammer Simulation");
    QApplication::setOrganizationName("HAFIANE Mohamed");
    QCoreApplication::setOrganizationName("org.hafsoftdz");
    QCoreApplication::setApplicationVersion(__VERSION__);
    QPixmap pixmap = QPixmap (":/icons/water_hammer_simulation.ico");

    // Setup and load translator for localization
    //-----
    QTranslator translator;
    //QString locale = QLocale::system().name();
    QString locale = QString(QLocale::system().name()).left(2);
    if (locale.length() < 2) locale = "en";
    //qDebug()<<"locale="<<QLocale::system().name();
    if (locale!="fr")
    {
        locale="en";
        if(translator.load(QString(":/translations/qt_") + locale))
            app.installTranslator(&translator);
    }
    //-----
    water_hammer_simulation w;
    w.setWindowIcon(QIcon(pixmap));
    w.show();
    return app.exec();
}
