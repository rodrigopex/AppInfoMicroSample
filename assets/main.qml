/*
 * Copyright (c) 2011-2013 BlackBerry Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.2
import app.info 1.0

Page {
    titleBar: TitleBar {
        title: qsTr("App info sample")
    }
    attachedObjects: ApplicationInfo {
        id: appInfo
    }
    Container {
        Container {
            topPadding: 20
            leftPadding: 20
            rightPadding: 20
//            bottomPadding: 20
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            Label {
                verticalAlignment: VerticalAlignment.Center
                text: "App version"
            }
            Label {
                text: appInfo.version()
                textStyle.base: SystemDefaults.TextStyles.BigText
            }
        }
        Divider {
        }
        Container {
            leftPadding: 20
            Container {
                Label {
                    verticalAlignment: VerticalAlignment.Center
                    text: "Current app path"
                }
            }
            Container {

                Label {
                    text: appInfo.currentPath()
                    textStyle.fontSize: FontSize.XXSmall
                    multiline: true
                }
            }
        }
        Divider {

        }
        Container {
            leftPadding: 20
            Container {
                Label {
                    verticalAlignment: VerticalAlignment.Center
                    text: "Home app path"
                }
            }
            Container {

                Label {
                    text: appInfo.homePath()
                    multiline: true
                    textStyle.fontSize: FontSize.XXSmall
                }
            }
        }
        Divider {

        }
        Container {
            leftPadding: 20
            Container {
                Label {
                    verticalAlignment: VerticalAlignment.Center
                    text: "Temporary app path"
                }
            }
            Container {

                Label {
                    text: appInfo.tempPath()
                    multiline: true
                    textStyle.fontSize: FontSize.XXSmall
                }
            }
        }
        Divider {

        }
    }
}
