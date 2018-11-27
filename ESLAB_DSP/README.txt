
*************************************************
*						*
*	TEAM 11- Assignment 2			*
*		README FILE			*
*						*
*						*
*************************************************

Compiling
Run the makefile provided for the code on GPP and DSP side.

Running
The code that we have provided has the option to vary the size of picture executed on the DSP. We have provided our fastest implementation which executes 
1/5 on GPP and 4/5 on the DSP of the gaussian function and continues the rest of the execution on the GPP.

To alter the different size please alter the following variables.

To execute a portion on DSP and GPP
In pool notify.c on line 417 change: int halfTheRows = (1*rows/5) to the desired portion. Entering 1*rows/5 will execute 1/5 on GPP and 4/5 on the DSP.
This number is the end (+ an offset to remove any interference) of the first gaussian function. 
Do the same for line 229 for: start = 1*rows/5. For the DSP this will be starting point of the gaussian function.

To execute fully on the DSP
In poolnotify.c: comment lines 456 and 480-483 with '//'.
In task.c: change line 229 to: 'start = 0';

To execute fully on the GPP (full neon)
In pool_notify.c comment lines:437-446 453 463 470-472 480-483 with '//'.
And on line 472: gaussian_smooth(image, smoothedimGPP, endGone, cols, kernel, startGone, windowsize); change 'endGone' to 'rows'.

Enjoy!
