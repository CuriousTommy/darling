project(sysmon)

set(DYLIB_INSTALL_NAME "/usr/lib/libsysmon.dylib")
set(DYLIB_COMPAT_VERSION "1.0.0")
set(DYLIB_CURRENT_VERSION "1.0.0")

include_directories(${CMAKE_SOURCE_DIR}/src/libsysmon/include)

add_darling_library(sysmon SHARED
    src/sysmon.m
    src/OS_sysmon_object.m
    src/OS_sysmon_request.m
    src/OS_sysmon_table.m
    src/OS_sysmon_row.m
)
make_fat(sysmon)
target_link_libraries(sysmon system objc Foundation)
install(TARGETS sysmon DESTINATION libexec/darling/usr/lib)
