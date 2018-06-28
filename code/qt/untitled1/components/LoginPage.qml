import QtQuick 2.9
import QtQuick.Window 2.2

Rectangle {
    id: mainContainer
    width: parent.width * 0.9
    height: parent.height * 0.9
    border.width: 1
    border.color: "black"
    radius: 2
    color: "transparent"
    anchors.centerIn: parent
    
    Rectangle {
        id: navbar
        width: parent.width
        height: parent.height * .08
        color: blackish
        
        property int horizontalMargin: width * 0.06
        
        Rectangle {
            id: logo
            anchors.left: parent.left
            anchors.leftMargin: parent.horizontalMargin
            anchors.verticalCenter: parent.verticalCenter
            width: height
            height: parent.height * .7
            color: "#643173"
            radius: width / 2
        }
        
        Row {
            id: loginRow
            anchors.right: parent.right
            anchors.rightMargin: parent.horizontalMargin
            anchors.verticalCenter: parent.verticalCenter
            height: parent.height * .7
            spacing: 25
            
            Column {
                height: parent.height
                spacing: 3
                
                Text {
                    anchors.left: parent.left
                    color: "white"
                    text: "Email"
                    font.pixelSize: 11
                }
                
                Rectangle {
                    width: 150
                    height: 25
                    anchors.left: parent.left
                    color: "white"
                }
            }
            
            Column {
                height: parent.height
                spacing: 3
                
                Text {
                    anchors.left: parent.left
                    color: "white"
                    text: "Password"
                    font.pixelSize: 11
                }
                
                Rectangle {
                    width: 150
                    height: 25
                    anchors.left: parent.left
                    color: "white"
                }
            }
            
            Rectangle {
                anchors.verticalCenter: parent.verticalCenter
                width: 55
                height: 25
                radius: 2
                color: "white"
                
                Text {
                    anchors.centerIn: parent
                    color: "black"
                    text: "Login"
                    font.pixelSize: 11
                }
            }
            
            
        }
        
        //            Rectangle {
        //                id: searchBar
        //                anchors.right: parent.right
        //                anchors.rightMargin: parent.horizontalMargin
        //                anchors.verticalCenter: parent.verticalCenter
        //                width: parent.width * .22
        //                height: parent.height * .7
        //                radius: 5
        //                color: "white"
        
        //                Text {
        //                    id: searchBarPlaceholderText
        //                    anchors.left: parent.left
        //                    anchors.leftMargin: parent.width * 0.06
        //                    anchors.verticalCenter: parent.verticalCenter
        //                    color: "#4f5254"
        //                    text: "femdom"
        //                }
        //            }
    }
    
    Rectangle {
        id: container
        anchors.centerIn: parent
        width: parent.width * .72
        height: parent.height * .5
        color: "transparent"
        border.color: blackish
        border.width: 1
        radius: 4
        
        Rectangle {
            id: containerImage
            anchors.top: parent.top
            anchors.left: parent.left
            width: parent.width / 2
            height: parent.height
            color: "#6bf178"
        }
        
        Item {
            id: loginContainer
            anchors.top: parent.top
            anchors.right: parent.right
            width: parent.width / 2
            height: parent.height
            
            Column {
                width: parent.width
                height: parent.height
                anchors.top: parent.top
                anchors.topMargin: parent.height * 0.1
                
                spacing: 20
                
                Column {
                    spacing: 4
                    
                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: 30
                        text: "Register"
                        color: blackish
                        font.pixelSize: 18
                    }
                    
                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: 30
                        text: "It's free an always will be."
                        color: blackish
                        font.pixelSize: 14
                    }
                }
                
                Rectangle {
                    id: username
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width * .75
                    height: parent.height * .1
                    color: "lightgray"
                    radius: 2
                    
                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: parent.width * .05
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Username"
                        color: blackish
                    }
                }
                
                Rectangle {
                    id: password
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width * .75
                    height: parent.height * .1
                    color: "lightgray"
                    radius: 2
                    
                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: parent.width * .05
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Password"
                        color: blackish
                    }
                    
                    Text {
                        anchors.right: parent.right
                        anchors.rightMargin: parent.width * .05
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Forgot?"
                        color: blackish
                        font.pixelSize: 10
                        font.underline: true
                    }
                }
                
                Rectangle {
                    id: submit
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width * .75
                    height: parent.height * .1
                    color: "#643173"
                    border.width: 1
                    border.color: "#252627"
                    radius: 7
                    
                    Text {
                        anchors.centerIn: parent
                        text: "Register"
                        color: "#f1dede"
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        onClicked: console.log("Register")
                    }
                }
            }
        }
    }
    
    Rectangle {
        id: footer
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        width: parent.width
        height: parent.height * 0.12
        color: blackish
    }
}
