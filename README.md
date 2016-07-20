# convert-png2-html-const
Convert PNG Icon files to Embedded HTML Image C++ const char

    Want to use images on the web pages your microcontroler produces but don't have a sdcard attached?
    
    Don't want to hastle with manual conversion! Then this script is for you!

    Creates icons-set.uu.txt from any png files in the current directory.
    
    Linux / Unix with: bash + uuconvert (shar-tools) + perl is required.
    
    Just copy and past in any image variables into your code as you like.
    
    Designed for use with Ardunio / NodeMCU / ESP8266 and other microcontrolers / IoT.

    Usage:  ./convert-png2-html-const.sh

    Example - Using the icons-set.uu.txt entries in your code:
    
    const static char *ui_basic_tick = "<img src='data:image/png;base64,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' alt='basic-tick.png'>";

    webString+="<p><a href='/control'>";
    
    webString+=ui_wrench_tool;
    
    webString+=" Control</a></p>";
