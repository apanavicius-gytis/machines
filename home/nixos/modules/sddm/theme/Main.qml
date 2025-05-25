import QtQuick 2.0
import QtQuick.Window 2.2
import QtMultimedia 5.7
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Rectangle {
    width: 1920
    height: 1080
    color: "black"

    AnimatedImage {
        id: backgroundGif
        source: "bg.gif"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        playing: true
        cache: false
      }
      Column {
        id: clockColumn
        spacing: 20
        anchors.horizontalCenter: loginBox.horizontalCenter
        anchors.bottom: loginBox.top
        anchors.bottomMargin: 180
        
        Item {
          id: hoursItem
          width: parent.width
          height: 60
          anchors.bottom: clockColumn.top

          DropShadow {
            anchors.fill: clockText
            source: clockText
            verticalOffset: 2
            color: "#80000000"
            radius: 3
            samples: 3
          }

          Text {
            id: clockText
            font.pixelSize: 54
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            text: Qt.formatDateTime(new Date(), "hh:mm")
          }
        }

        Item {
          width: parent.width
          height: 60
          anchors.top: hoursItem.bottom

          Text {
            id: weekday
            font.pixelSize: 42
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            text: Qt.formatDateTime(new Date(), "dddd")
          }

          DropShadow {
            anchors.fill: weekday
            source: weekday
            verticalOffset: 2
            color: "#80000000"
            radius: 3
            samples: 3
          }
        }

        Timer {
          interval: 1000 // update every second
          running: true
          repeat: true
          onTriggered: {
            weekday.text = Qt.formatDateTime(new Date(), "dddd")
            clockText.text = Qt.formatDateTime(new Date(), "hh:mm")
          }
        }
    }

    Rectangle {
        id: loginBox
        width: 400
        height: 200
        anchors.centerIn: parent
        radius: 10
        color: Qt.rgba(0,0,0,0)

        ColumnLayout {
          anchors.fill: parent
          anchors.margins: 20
          spacing: 10

          TextField {
            id: userField
            height: 40
            placeholderText: "username"
            Layout.fillWidth: true
            background: Rectangle {
            color: Qt.rgba(1, 1, 1, 1)
              radius: 4
            }
            font.pixelSize: 18
          }

          TextField {
              id: passwordField
              height: 40
              placeholderText: "password"
              Layout.fillWidth: true
              echoMode: TextInput.Password
              background: Rectangle {
                radius: 4
              }
              font.pixelSize: 18
          }

            Button {
                text: "Login"
                Layout.alignment: Qt.AlignHCenter
                onClicked: {
                    sddm.login(userField.text, passwordField.text, 0);
                }
            }
        }
    }
}
