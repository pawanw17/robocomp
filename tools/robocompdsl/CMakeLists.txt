cmake_minimum_required( VERSION 3.10 )
project(robocompdsl
        VERSION 2021.2.2
        DESCRIPTION "RoboComp robocomopdsl tool"
        LANGUAGES CXX )


#  Installation  #
##################


INSTALL(PROGRAMS "robocompdsl.py" DESTINATION /opt/robocomp/bin RENAME robocompdsl )
INSTALL(DIRECTORY "templates" DESTINATION /opt/robocomp/python/${PROJECT_NAME}
        PATTERN "__pycache__" EXCLUDE
        PATTERN "*.pyc" EXCLUDE
        )
INSTALL(DIRECTORY "dsl_parsers" DESTINATION /opt/robocomp/python/${PROJECT_NAME}
        PATTERN "__pycache__" EXCLUDE
        PATTERN "*.pyc" EXCLUDE
        )
INSTALL(FILES "filesgenerator.py" DESTINATION /opt/robocomp/python/${PROJECT_NAME} )
INSTALL(FILES "robocompdslutils.py" DESTINATION /opt/robocomp/python/${PROJECT_NAME} )
INSTALL(FILES "rcExceptions.py" DESTINATION /opt/robocomp/python/${PROJECT_NAME})
INSTALL(CODE "execute_process( \
    COMMAND ${CMAKE_COMMAND} -E create_symlink \
    /opt/robocomp/bin/robocompdsl \
    /usr/local/bin/robocompdsl   \
    )"
)

