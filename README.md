Problem Statement:  Given a stream of data bits (this is the input), you are required to produce a Differential  Manchester  signal.
                    Further  convert  it  into  Multilevel  8B6T. Record your observations and obtain the differences between the 
                    two schemes in terms of bit rate, baud rate, bandwidth, value of r. Also, you are required to vary the above 
                    mentioned parameters and record the results(for eg. increase the bit rate and observe how the waveform changes).
                    Plot graphs to substantiate your recorded observations.


Members:

    Tejaskumar K (16CO250)
    
    Tejas R     (16CO148)
    
Files Included:
    
    Main File:
    
            This file calls Differential_Manchester and Encoding_8B6T files for plotting corresponding plots.

    Differntial_Manchester file:
    
            Its purpose is to plot the Differntial Manchester encoding plot for the given sequence of input bits.
    
    Encoding_8B6T:
    
            Its purpose is to plot 8B6T encoding plot for the given sequence of input bits.
            
Flow of Files:
        
    Main -> Differential_Manchester -> Encoding_8B6T

Parameters for execution:
    
    * Baud rate  :          It is the number of signal elements per second.
    
    * Sequence of bits:      A sequence of bits is given as input to get corresponding plot.
    
    * 8B6T encoding sequence: 8B6T encoding sequence for the given sequence of input bits to obtain 8B6T encoding plot. 
    
Limitations:

1.The input for the Differential Manchester Encoding has to be a sequence of bits with white spaces in between.

2.The input for the 8B6T encoding must be a sequence of +,- or 0 corresponding to the input given to the Differential Manchester.

3.This sequence has to be obtained by referring to the 8B6T mapping table and must not have white spaces in between.

    
Sample Inputs:      (Resulting Plots shown in the images uploaded)

    Baud Rate :                     2
    
    Sequence of bits :          00010001 (8-bits)
    
    Corresponding 8B6T code :   -0-0++    (6-bits corresponding to 8-bits)
    
    
What is to be entered as input during execution?

In this code:

	* Enter the baud rate for the schemes

	* First enter the sequence of bits(for differential manchester) with space in between
	
	* Now enter the sequence for 8B6T coding (ex: -0-0++) in multiples of 6
	
	* Then the result bit rate for given baud rate is given as output along with the plots.
	
	* The differential manchester graph is plotted in figure 1 and 8B6T in figure 2
	
	* The values of parameters r,bit rate(bps), bandwidth(Hz) is displayed for both encoding schemes.