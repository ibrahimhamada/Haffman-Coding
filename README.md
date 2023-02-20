# Implementation-of-Haffman-Coding

My Project of the Information Theory and Coding Course Offered in Fall 2022 @ Zewail City.

In this project, I implemented the Haffman Coding Algorithm.


## Algorithm Steps:

A) Video Encoder 

            1) Designing a Huffman code for an English Language character set by Calculating the average length of the code and compare it to the entropy of the English Language.
            2) Encoding a text file that contains an English paragraph (It will be given under a name Test1.txt) using the constructed codebook. 
            3) Designing a Huffman code depending on the frequency of occurrence of English letters in the text file given.  
            4) Comparing the total length of the encoded bits in both cases. 


B) Video Decoder 

            1) JPEG Decoding of the I-frame. 
                 a. Huffman Decoding is applied on the recieved vector   
                 b. Run Length Decoding is applied on the restored symbols 
                 c. Decoded Vector is divided into (1x64) blocks and then each bloch is converted to 2D 
                 d. Each 8x8 Block is multiplied by the Low Quantization Table 
                 e. IDCT is applied on the 8x8 Blocks 
                 f. Combine 8x8 pixel groups into a single image and construct the frame.
            2) Entropy Decoding of the motion vectors of macro blocks. 
            3) Reconstruct the macro blocks to produce the decoded frames. 
