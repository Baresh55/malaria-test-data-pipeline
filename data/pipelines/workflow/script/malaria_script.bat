@echo off
cd "C:\Users\Custom\Desktop\Apache Hops 2.17\apache-hop-client-2.17.0\hop"
hop-run.bat -f "C:\Users\Anne\OneDrive\Desktop\New Analysis Folder\district-data-scd2-Hops\workflow\district_workflow.hwf" -j "clarkson" -l BASIC
pause
