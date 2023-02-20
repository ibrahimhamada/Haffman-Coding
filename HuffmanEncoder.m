%% This function is used to find the encoded sequence of a given message.
% It takes the message to be encoded and the dictionary that contains each symbol along with its code. 
%It iterates over all characters in the message and encodes them using the dictionaty. 

function encoded_message = HuffmanEncoder(message, dict)
chars =  num2cell(char(message)); % Dividing the message into char array
dict_length = length(dict.code);
encoded_message = '';
% Iterating over each character in the Message
while( ~isempty(chars) ) 
    transition_code = '';
     for j = 1 : dict_length
         if( strcmp(chars(1),dict.symbol(j)))
                 transition_code = dict.code{j};
                 break;    
         end
     end
     encoded_message = strcat( encoded_message,transition_code ); % Appending the codes to find the total sequence
     chars = chars(2: end );
end
end