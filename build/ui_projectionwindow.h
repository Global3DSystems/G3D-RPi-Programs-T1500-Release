/********************************************************************************
** Form generated from reading UI file 'projectionwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.11.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_PROJECTIONWINDOW_H
#define UI_PROJECTIONWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_ProjectionWindow
{
public:
    QWidget *centralwidget;
    QLabel *image_label;

    void setupUi(QMainWindow *ProjectionWindow)
    {
        if (ProjectionWindow->objectName().isEmpty())
            ProjectionWindow->setObjectName(QStringLiteral("ProjectionWindow"));
        ProjectionWindow->resize(1000, 600);
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(ProjectionWindow->sizePolicy().hasHeightForWidth());
        ProjectionWindow->setSizePolicy(sizePolicy);
        centralwidget = new QWidget(ProjectionWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        image_label = new QLabel(centralwidget);
        image_label->setObjectName(QStringLiteral("image_label"));
        image_label->setGeometry(QRect(0, 0, 1000, 600));
        image_label->setStyleSheet(QStringLiteral("background-color: rgb(0, 0, 0);"));
        image_label->setFrameShape(QFrame::Box);
        ProjectionWindow->setCentralWidget(centralwidget);

        retranslateUi(ProjectionWindow);

        QMetaObject::connectSlotsByName(ProjectionWindow);
    } // setupUi

    void retranslateUi(QMainWindow *ProjectionWindow)
    {
        ProjectionWindow->setWindowTitle(QApplication::translate("ProjectionWindow", "MainWindow", nullptr));
        image_label->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class ProjectionWindow: public Ui_ProjectionWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_PROJECTIONWINDOW_H
