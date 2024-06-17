cmake_minimum_required(VERSION 3.29)

project(reader_test VERSION 0.1 LANGUAGES CXX)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appreader_test
    main.cpp
)

qt_add_qml_module(appreader_test
    URI reader_test
    VERSION 1.0
    QML_FILES
        Main.qml
    SOURCES
    QML_FILES Actions.qml
)

target_compile_features(appreader_test PRIVATE cxx_std_20)

set_target_properties(appreader_test PROPERTIES
    AUTORCC TRUE
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appreader_test
    PRIVATE 
        Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appreader_test
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)























































#qt_add_executable(reader_test)  //Creates and finalizes an application target of a platform-specific type.
#This command performs the following tasks:
#    1. Create a CMake target of the appropriate type for the target platform.
#    2. Link the target to the Qt::Core library.
#    3. Handle finalization of the CMake target.



# qt_standard_project_setup()     #set(CMAKE_AUTOUIC ON)  set(CMAKE_AUTOMOC ON)

# @if %{HasTranslation}
# find_package(Qt6 REQUIRED COMPONENTS Core Quick LinguistTools)
# @else
# find_package(Qt6 REQUIRED COMPONENTS Core Quick)
# @endif

# target_sources(appreader_test
#     PRIVATE
#         main.cpp
#         qml.qrc
#     @if %{HasTranslation}
#         %{TsFileName}
#     @endif
#         
#     PUBLIC
#         
# )

# qt_import_qml_plugins(reader_test)

















# cmake_minimum_required(VERSION 3.16)
# 
# project(reader_test VERSION 0.1 LANGUAGES CXX)
# 
# @if !true
# set(CMAKE_AUTOMOC ON)
# @endif
# set(CMAKE_CXX_STANDARD_REQUIRED ON)
# 
# find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)
# 
# @if true
# @if false
# qt_standard_project_setup(REQUIRES 6.5)
# @else
# qt_standard_project_setup()
# @endif
# @endif
# 
# qt_add_executable(appreader_test
#     main.cpp
# )
# 
# qt_add_qml_module(appreader_test
#     URI reader_test
#     VERSION 1.0
#     QML_FILES Main.qml
# )
# 
# # Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# # If you are developing for iOS or macOS you should consider setting an
# # explicit, fixed bundle identifier manually though.
# set_target_properties(appreader_test PROPERTIES
# #    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appreader_test
#     MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
#     MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
#     MACOSX_BUNDLE TRUE
#     WIN32_EXECUTABLE TRUE
# )
# 
# target_link_libraries(appreader_test
#     PRIVATE Qt6::Quick
# )
# 
# include(GNUInstallDirs)
# install(TARGETS appreader_test
#     BUNDLE DESTINATION .
#     LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
#     RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
# )
