AppInfoMicroSample
==================
Using this sample code you would be able to track the app version inside the application through the ApplicationInfo class. this class is dynamicly generated with the current app's version. This code can still increment the buildId automatically. 

![Screenshot] (https://s3.amazonaws.com/microSamples/IMG_20131219_161902.png)

Features
--------
* Increment buildId automatically
* Make the version information available to the app
* Make the path system (QDir::currentPath(), and friends) available to the app 

How to use
----------
You have to execute the following steps:

- You have to copy the build folder to your project root folder.

![Screenshot] (https://s3.amazonaws.com/microSamples/Screen+Shot+2013-12-19+at+16.31.16.png)

- Include the include(build/build.pri) in your .pro. The result of the addition is:

```
APP_NAME = AppInfoMicroSample

CONFIG += qt warn_on cascades10

include(build/build.pri)
include(config.pri)
```

- Include the header ApplicationInfo.hpp in you ApplicationUI.cpp file, the result should be:

```c++
include "applicationui.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>
#include <bb/cascades/LocaleHandler>

#include "applicationinfo.hpp"

using namespace bb::cascades;

ApplicationUI::ApplicationUI(bb::cascades::Application *app) :
        QObject(app)
{
	ApplicationInfo::registerQmlTypes();
    // prepare the localization
    m_pTranslator = new QTranslator(this);
    m_pLocaleHandler = new LocaleHandler(this);
```

