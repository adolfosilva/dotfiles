import QtQuick 2.9
import QtQuick.Window 2.2

import QtQuick 2.9
import QtQuick.Window 2.2

import "components"

Window {
    visible: true
    width: 900
    height: 300
    title: qsTr("Shibari")

    property color blackish: "#252627"

    LoginPage {
        id: mainContainer
    }
}
