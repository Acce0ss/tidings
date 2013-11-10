import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    Column {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: Theme.paddingMedium
        anchors.rightMargin: Theme.paddingMedium

        PageHeader {
            title: "About Tidings"
        }

        Item {
            width: 1
            height: 3 * Theme.paddingLarge
        }

        Image {
            //width: parent.width / 3
            //height: width
            anchors.horizontalCenter: parent.horizontalCenter
            source: Qt.resolvedUrl("../tidings.png")
            smooth: true
            asynchronous: true
        }

        Item {
            width: 1
            height: Theme.paddingLarge
        }

        Label {
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: Theme.fontSizeMedium
            color: Theme.primaryColor
            text: "A feed aggregator"
        }

        Item {
            width: 1
            height: Theme.paddingLarge
        }

        Label {
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: Theme.fontSizeExtraSmall
            color: Theme.secondaryColor
            text: "Version 0.1"
        }

        Label {
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: Theme.fontSizeExtraSmall
            color: Theme.secondaryColor
            text: "Copyright © 2013 Martin Grimme"
        }

        Item {
            width: 1
            height: 2 * Theme.paddingLarge
        }

        Label {
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: Theme.fontSizeSmall
            color: Theme.secondaryColor
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            text: "Tidings is open source software licensed under the terms of "
                  + "the GNU General Public License."
        }

        Item {
            width: 1
            height: 2 * Theme.paddingLarge
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "View license"
            onClicked: {
                pageStack.push(Qt.resolvedUrl("LicensePage.qml"));
            }
        }

    }

}