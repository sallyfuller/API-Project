echo off
echo "******************** DELETING PREVIOUS REPORTS"
rmdir /Q /S C:\Users\lcordy\Documents\Sovereign\Reports
TIMEOUT 1
mkdir C:\Users\lcordy\Documents\Sovereign\Reports
echo "******************** PREVIOUS REPORTS DELETED"
echo "******************** TEST RUN STARTING"
call "C:\Program Files\SmartBear\ReadyAPI-2.5.0\bin\testrunner.bat" -sCountryInfo_TestSuite -r -a -j -fC:\Users\lcordy\Documents\Sovereign\Reports -g "-RTestSuite Report" -FPDF,CSV "-EDefault environment" C:\Users\lcordy\Documents\Sovereign\CountryInfo_Project.xml
echo "******************** TEST RUN COMPLETED"