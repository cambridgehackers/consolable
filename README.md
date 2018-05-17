consolable
==========

===Zybo

When using consolable on osx with zybo, be sure to:
    ls /dev/tty.usbserial*
to see what devices created when the zybo is powered on.

You then need to explicitly specify the _2nd_ device name when running consolable:
    ./consolable /dev/tty.usbserial-00007414B
It appears that the first device is for JTAG.
