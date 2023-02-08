cmake_minimum_required(VERSION 3.16)

project(qml-custom-toolbar VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appqml-custom-toolbar
    main.cpp
)

qt_add_qml_module(appqml-custom-toolbar
    URI qml-custom-toolbar
    VERSION 1.0
    QML_FILES
        FakeStyle.qml
        main.qml
        PageToolbar.qml
        ToolbarItem.qml
        pages/apple.qml
        pages/banana.qml
        pages/cherry.qml
        pages/durian.qml
        pages/elderberry.qml
    RESOURCES
        images/apple.svg
        images/banana.svg
        images/cherry.svg
        images/durian.svg
        images/elderberries.jpg
        images/menu.png
)

set_target_properties(appqml-custom-toolbar PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appqml-custom-toolbar
    PRIVATE Qt6::Quick)

install(TARGETS appqml-custom-toolbar
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
