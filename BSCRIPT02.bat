@echo off
set /p shape=Select a shape: circle, triangle, or quadrilateral.
if /i "%shape%"=="circle" (
    set /p radius=Enter the radius:
    set /a area=3.14*%radius%*%radius%
    echo The area of the circle is %area%
) else if /i "%shape%"=="triangle" (
    set /p side1=Enter the first side:
    set /p side2=Enter the second side:
    set /p side3=Enter the third side:
    set /a area=0.5*%side1%*%side2%*sin(180-[%side3%]/[%side1%]+[%side2%]/[%side3%])
    if %side1%==%side2% && %side2%==%side3% echo This is an equilateral triangle.
    if %side1%==%side2% && %side2%<>%side3% echo This is an isosceles triangle.
    if %side1%<>%side2% && %side2%<>%side3% echo This is a scalene triangle.
    echo The area of the triangle is %area%
) else if /i "%shape%"=="quadrilateral" (
    set /p length=Enter the length:
    set /p width=Enter the width:
    set /a area=%length%*%width%
    if %length%==%width% echo This is a square.
    if %length%<>%width% echo This is a rectangle.
    echo The area of the quadrilateral is %area%
)