@echo off
set in_dir=%1
set rate=%2
echo %in_dir% %rate%
mkdir "out/%in_dir%"

for %%f in (%in_dir%/*.wav) do (
    echo %%f
    sox %in_dir%/%%f -r %rate% out/%in_dir%/%%f 
)
EXIT /b 0
