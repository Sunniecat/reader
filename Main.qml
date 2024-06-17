import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("hello, world")
    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem { action: actions.open }
            MenuItem { action: actions.quit }
            MenuItem { action: actions.about}
        }
    }

    header: ToolBar {
        RowLayout{
            ToolButton{ action: actions.open }
            ToolButton{ action: actions.quit }
        }
    }

    Actions {
        id: actions
    }

    //Content Area
   Content {
       id: contents
   }
}
